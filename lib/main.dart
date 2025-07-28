import 'package:flutter/material.dart';
import 'package:login/controller/login_controller.dart';
import 'package:login/pages/signup_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginController(),
      child: MaterialApp(home: SignupPage(), debugShowCheckedModeBanner: false),
    );
  }
}
