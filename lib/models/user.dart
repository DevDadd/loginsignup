class User {
  String password;
  String account;
  User({required this.password, required this.account});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(password: json['password'], account: json['account']);
  }
}
