import 'dart:async';
import 'package:dio/dio.dart';
import 'package:stylish/core/netwoking/end_points.dart';
import '../service/get_it_service.dart';
import '../service/secure_storage_service.dart';

class ApiInterceptors extends Interceptor {
  final Dio dio;
  // قفل لمنع تكرار طلب الـ Refresh في حال وجود عدة طلبات متزامنة
  static Completer<String?>? _refreshCompleter;

  ApiInterceptors({required this.dio});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers["Content-Type"] = "application/json";

    // إرفاق التوكن في كل طلب
    final token = await sl<SecureStorageService>().getAccessToken();
    if (token.isNotEmpty) {
      options.headers["Authorization"] = "Bearer $token";
    }

    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final is401 = err.response?.statusCode == 401;
    final isLogin = err.requestOptions.path.contains(EndPoints.loginApi);

    if (is401 && !isLogin) {
      // 1. إذا كان هناك تحديث جاري، ننتظر النتيجة
      if (_refreshCompleter != null) {
        final token = await _refreshCompleter!.future;
        return _retryRequest(err.requestOptions, handler, token);
      }

      // 2. إذا لم يكن هناك تحديث، نبدأ عملية الـ Refresh
      _refreshCompleter = Completer();

      try {
        final refreshToken = await sl<SecureStorageService>().getRefreshToken();

        final refreshDio = Dio();
        final response = await refreshDio.post(
          "${EndPoints.baseUrl}auth/refresh-token",
          data: {"refreshToken": refreshToken},
        );

        final newAccessToken = response.data['access_token'];
        final newRefreshToken = response.data['refresh_token'];

        await sl<SecureStorageService>().saveAccessToken(
          accessToken: newAccessToken,
          refreshToken: newRefreshToken,
        );

        _refreshCompleter!.complete(newAccessToken);
        _retryRequest(err.requestOptions, handler, newAccessToken);
      } catch (e) {
        // 3. فشل الـ Refresh: نقوم بمسح البيانات وإرسال حدث تسجيل الخروج
        await sl<SecureStorageService>().deleteTokens();
        _refreshCompleter!.complete(null);

        // إخطار التطبيق بضرورة الانتقال لصفحة الـ Login
        sl<AuthEventBus>().addEvent(AuthEvent.logOut);

        return handler.next(err);
      } finally {
        _refreshCompleter = null;
      }
    } else {
      return handler.next(err);
    }
  }

  // دالة مساعدة لإعادة محاولة الطلب الأصلي بعد تحديث التوكن
  void _retryRequest(RequestOptions requestOptions, ErrorInterceptorHandler handler, String? token) async {
    if (token == null) {
      return handler.next(DioException(requestOptions: requestOptions));
    }

    requestOptions.headers["Authorization"] = "Bearer $token";
    final retryResponse = await dio.fetch(requestOptions);
    return handler.resolve(retryResponse);
  }
}

// تعريف أنواع الأحداث المتاحة
enum AuthEvent {
  logOut,
}

class AuthEventBus {
  AuthEventBus._();
  static final AuthEventBus instance=AuthEventBus._();
  // نستخدم broadcast لتمكين أكثر من "مستمع" (Listener) للحدث
  final _controller = StreamController<AuthEvent>.broadcast();

  // Stream للـ Listeners
  Stream<AuthEvent> get stream => _controller.stream;

  // ميثود لإضافة حدث جديد (يتم استدعاؤها من الـ Interceptor)
  void addEvent(AuthEvent event) {
    if (!_controller.isClosed) {
      _controller.add(event);
    }
  }

  // إغلاق الـ Stream عند إغلاق التطبيق لتجنب تسريب الذاكرة
  void dispose() {
    _controller.close();
  }
}