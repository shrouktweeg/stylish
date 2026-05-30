import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final FlutterSecureStorage storage = const FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  );
static const String _accessToken='access_token';
static const String _refreshToken='refresh_token';
  Future<void> saveAccessToken({required String accessToken,required String refreshToken}) async {
    await storage.write(key:_accessToken, value: accessToken);
    await storage.write(key: _refreshToken, value: refreshToken);

  }


  Future<String> getAccessToken() async {
    return await storage.read(key: _accessToken) ?? "";
  }

  Future<String> getRefreshToken() async {
    return await storage.read(key: _refreshToken) ?? "";
  }

  Future<void> deleteTokens() async {
    await storage.delete(key:_accessToken);
    await storage.delete(key: _refreshToken);
  }
}