import 'package:flutter/material.dart';
import 'package:login/controller/login_controller.dart';
import 'package:login/pages/sucees.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    late LoginController loginController = context.read();
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Center(
          child: Column(
            children: [
              TextField(controller: usernameController),
              SizedBox(height: 20),
              TextField(controller: passwordController),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final bool isSuccess = await loginController.PressedLogin(
                    usernameController.text,
                    passwordController.text,
                  );
                  if (isSuccess) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Sucees()),
                    );
                  }
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
