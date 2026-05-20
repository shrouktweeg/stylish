class TokenModel {
  final String accessToken;
  final String refreshToken;


  factory TokenModel.fromJson(Map<String, dynamic> json) {
    return TokenModel(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );
  }

  TokenModel({required this.accessToken, required this.refreshToken});

}