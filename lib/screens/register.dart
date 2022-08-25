import 'package:flutter/material.dart';

import '../widgets/button.dart';
import '../widgets/personalInfo.dart';
import '../widgets/registerAcc.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => RegisterState();
}

class RegisterState extends State<Register> {
  final int totalSteps = 2;
  int currentStep = 1;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void nextStep() {
    setState(() {
      currentStep += currentStep;
    });
  }

  void prevStep() {
    setState(() {
      currentStep = currentStep - 1;
    });
  }

  void register() {
    print(firstNameController.text);
  }

  void navigateTo(route) {
    Navigator.of(context).pushNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 26, 24, 29),
        title: const Text('DAR|Daily Activity Records'),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [Color(0xff1d0d63), Color(0xff6d111c)],
        )),
        width: double.infinity,
        child: Container(
          width: 10.0,
          margin: const EdgeInsets.only(left: 13, right: 13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Steps $currentStep/$totalSteps',
                  style: const TextStyle(fontSize: 16, color: Colors.white)),
              if (currentStep == 1)
                PersonalInfo(
                    nextStep: nextStep,
                    firstNameController: firstNameController,
                    lastNameController: lastNameController,
                    numberController: numberController),
              if (currentStep == 2)
                RegisterAcc(
                    prevStep: prevStep,
                    emailController: emailController,
                    passwordController: passwordController,
                    confirmPasswordController: confirmPasswordController,
                    register: register),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () => navigateTo('Login'),
                      child: const Text("Login",
                          style: TextStyle(fontSize: 16, color: Colors.white)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
