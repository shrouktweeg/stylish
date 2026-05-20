import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageHelper {
  // جعل الـ options ثابته لتحسين استهلاك الذاكرة
  final FlutterSecureStorage storage = const FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  );

  // تحديد Future<void> بدلاً من تركها فارغة
  Future<void> saveAccessToken(String accessToken) async {
    await storage.write(key: 'access_token', value: accessToken);
  }

  Future<void> saveRefreshToken(String refreshToken) async {
    await storage.write(key: 'refresh_token', value: refreshToken);
  }

  Future<String> getAccessToken() async {
    return await storage.read(key: 'access_token') ?? "";
  }

  Future<String> getRefreshToken() async {
    return await storage.read(key: 'refresh_token') ?? "";
  }

  Future<void> deleteTokens() async {
    await storage.delete(key: 'access_token');
    await storage.delete(key: 'refresh_token');
  }
}