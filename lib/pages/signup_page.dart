import 'package:flutter/material.dart';
import 'package:login/controller/login_controller.dart';
import 'package:login/pages/login_page.dart';
import 'package:provider/provider.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    late LoginController loginController = context.read();
    return Scaffold(
      appBar: AppBar(title: Text("SignUp Page")),
      body: Center(
        child: Column(
          children: [
            TextField(controller: usernameController),
            SizedBox(height: 20),
            TextField(controller: passwordController),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final bool isSuccess = await loginController.PressedSignup(
                  usernameController.text,
                  passwordController.text,
                );
                if (isSuccess) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                }
              },
              child: Text("Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}
