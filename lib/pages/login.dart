import 'package:flutter/material.dart';
import 'package:login/components/button.dart';
import 'package:login/components/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void onTap() {
    print(usernameController.text);
    print(passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 122, 212, 152),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextField(
              controller: usernameController,
              label: Text('Username'),
              obscure: false,
            ),
            SizedBox(
              height: 10,
            ),
            MyTextField(
              controller: passwordController,
              label: Text('Password'),
              obscure: true,
            ),
            SizedBox(
              height: 10,
            ),
            MyButton(onTap: () => onTap())
          ],
        ),
      ),
    );
  }
}
