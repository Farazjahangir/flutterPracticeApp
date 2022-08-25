import 'package:flutter/material.dart';

import './textInput.dart';
import './button.dart';

class RegisterAcc extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final VoidCallback prevStep;
  final VoidCallback register;

  RegisterAcc(
      {required this.emailController,
      required this.passwordController,
      required this.confirmPasswordController,
      required this.prevStep,
      required this.register});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Register Account",
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
            SizedBox(
                width: 45,
                height: 45,
                child: TextButton(
                  onPressed: prevStep,
                  child: Image.asset(
                    "assets/icons/leftArrow.png",
                  ),
                )),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: TextInput(
              controller: emailController,
              placeHolder: 'Enter your email',
              label: 'Email'),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: TextInput(
            controller: passwordController,
            placeHolder: 'Enter your password',
            label: 'Password',
            obscureText: true,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: TextInput(
            controller: confirmPasswordController,
            placeHolder: 'Re-type Password',
            label: 'Re-tyoe password',
            obscureText: true,
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 10),
            child: Button('Register', register)),
      ],
    );
  }
}
