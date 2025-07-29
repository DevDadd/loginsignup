import 'package:flutter/material.dart';
import 'package:login/models/user.dart';

class LoginController with ChangeNotifier {
  List<User> users = [];

  Future<bool> PressedSignup(String username, String password) async {
    bool isAdded = true;
    for (var i in users) {
      if (i.account == username) {
        isAdded = false;
      }
    }
    if (isAdded) {
      users.add(User(password: password, account: username));
      notifyListeners();
    }
    return isAdded;
  }

  Future<bool> PressedLogin(String username, String password) async {
    bool approvedLogin = false;
    for (var i in users) {
      if (i.account == username && i.password == password) {
        approvedLogin = true;
      }
    }
    return approvedLogin;
  }
}
