import 'dart:convert';

LoginUser loginUserFromJson(String str) => LoginUser.fromJson(json.decode(str));

String loginUserToJson(LoginUser data) => json.encode(data.toJson());

class LoginUser {
  LoginUser({
    this.expiry,
    this.token,
  });

  DateTime expiry;
  String token;

  factory LoginUser.fromJson(Map<String, dynamic> json) => LoginUser(
        expiry: DateTime.parse(json["expiry"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "expiry": expiry.toIso8601String(),
        "token": token,
      };
}
