import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../widgets/textInput.dart';
import '../widgets/button.dart';

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
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Container(
        color: Color(0xfffdfe4ea),
        child: Container(
          margin: const EdgeInsets.only(left: 13, right: 13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 18),
                child: const Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Container(
                child: Form(
                  child: Column(
                    children: [
                      TextInput(
                        controller: emailController,
                        placeHolder: "Enter your email",
                      ),
                      TextInput(
                        controller: passwordController,
                        obscureText: true,
                        placeHolder: 'Enter Your Password',
                      ),
                      Button('Login', OnPressed),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: TextButton(
                              onPressed: () => navigateTo('Register'),
                              child: const Text('Register',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black)),
                            ),
                          ),
                          Container(
                              child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forgot Password',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                              textAlign: TextAlign.right,
                            ),
                          )),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
