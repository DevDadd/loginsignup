class User {
  String gmail;
  String password;
  String account;
  User({required this.gmail, required this.password, required this.account});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      gmail: json['gmail'],
      password: json['password'],
      account: json['account'],
    );
  }
}
