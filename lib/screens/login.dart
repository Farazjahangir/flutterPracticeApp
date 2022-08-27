import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../widgets/textInput.dart';
import '../widgets/button.dart';
import '../widgets/header.dart';
import '../config/customColors.dart';

class Login extends StatefulWidget {
  // const Login({ Login? key }) : super(Login: key);

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void OnPressed() async {
    try {
      print('PRESSED');
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: 'jahangirfaraz98@gmail.com',
        password: '12345678',
      );
      print('created');
      print(credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  void navigateTo(route) {
    Navigator.of(context).pushNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [Color(mainGradient[0]), Color(mainGradient[1])],
          )),
          child: Column(
            children: [
              Header(),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 13, right: 13),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Log into your account",
                          style: TextStyle(fontSize: 27, color: Color(white)),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: TextInput(
                              controller: emailController,
                              placeHolder: "Enter your email",
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: TextInput(
                              controller: passwordController,
                              obscureText: true,
                              placeHolder: 'Enter Your Password',
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Button('Login', OnPressed)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Text('Reset Password',
                                    style: TextStyle(
                                        fontSize: 16, color: Color(white))),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                      fontSize: 16, color: Color(white)),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                'Not have an account?',
                                style: TextStyle(
                                    fontSize: 16, color: Color(white)),
                              ),
                              TextButton(
                                  onPressed: () => navigateTo('Register'),
                                  child: const Text('Register',
                                      style: TextStyle(
                                          fontSize: 16, color: Color(white))))
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
