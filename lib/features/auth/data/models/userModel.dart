class UserModel {
  final String? email;
  final String? password;
  final String? name;
  final String? avatar;
  final String? role;
  final int? id;

  UserModel({
    this.email,
    this.password,
    this.name,
    this.avatar,
    this.role,
    this.id,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'] ?? '',
      password: json['password'] ?? '',
      name: json['name'] ?? '',
      avatar: json['avatar'] ?? '',
      role: json['role'] ?? '',
      id: json['id'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'name': name,
      'avatar': avatar,
      'role': role,
      'id': id,
    };
  }
}