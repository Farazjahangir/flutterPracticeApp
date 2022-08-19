import 'package:flutter/material.dart';

import '../widgets/textInput.dart';
import '../widgets/button.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => RegisterState();
}

class RegisterState extends State<Register> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void register() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Container(
        width: double.infinity,
        color: Color(0xfffdfe4ea),
        child: Container(
          margin: const EdgeInsets.only(left: 13, right: 13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 18),
                child: const Text(
                  "Register",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40),
                ),
              ),
              TextInput(
                controller: nameController,
                placeHolder: 'Enter your name',
              ),
              TextInput(
                  controller: emailController, placeHolder: 'Enter your email'),
              TextInput(
                controller: passwordController,
                placeHolder: 'Enter your password',
                obscureText: true,
              ),
              Button('Register', register)
            ],
          ),
        ),
      ),
    );
  }
}
