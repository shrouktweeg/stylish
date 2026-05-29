import 'package:dio/dio.dart';
import 'package:stylish/core/netwoking/end_points.dart';
import '../service/get_it_service.dart';
import '../service/secure_storage_service.dart';

class ApiInterceptors extends Interceptor {
  final Dio dio;

  ApiInterceptors({required this.dio});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers["Content-Type"] = "application/json";

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
      try {
        final refreshToken = await sl<SecureStorageService>().getRefreshToken();

        final refreshDio = Dio();
        final response = await refreshDio.post(
          "${EndPoints.baseUrl}auth/refresh-token",
          data: {
            "refreshToken": refreshToken,
          },
        );

        final newAccessToken = response.data['access_token'];
        final newRefreshToken = response.data['refresh_token'];

        await sl<SecureStorageService>().saveAccessToken(accessToken: newAccessToken,refreshToken:newRefreshToken );

        final requestOptions = err.requestOptions;
        requestOptions.headers["Authorization"] = "Bearer $newAccessToken";

        final retryResponse = await dio.fetch(requestOptions);
        return handler.resolve(retryResponse);

      } catch (e) {
        await sl<SecureStorageService>().deleteTokens();
        return handler.next(err);
      }
    }

    return handler.next(err);
  }
}