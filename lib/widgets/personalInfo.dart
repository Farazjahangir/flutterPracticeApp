import 'package:flutter/material.dart';

import './textInput.dart';

class PersonalInfo extends StatelessWidget {
  final VoidCallback nextStep;
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController numberController;

  PersonalInfo(
      {required this.nextStep,
      required this.firstNameController,
      required this.lastNameController,
      required this.numberController});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: const Text(
                  "Provide Your Info",
                  style: TextStyle(fontSize: 27, color: Colors.white),
                ),
              ),
              SizedBox(
                  width: 45,
                  height: 45,
                  child: TextButton(
                    onPressed: nextStep,
                    child: Image.asset(
                      "assets/icons/rightArrow.png",
                    ),
                  )),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: TextInput(
                controller: firstNameController,
                placeHolder: 'Enter your first name',
                label: 'First name'),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: TextInput(
              controller: lastNameController,
              placeHolder: 'Enter your last name',
              obscureText: true,
              label: 'Last name',
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: TextInput(
              controller: numberController,
              placeHolder: 'Enter your number',
              label: 'Contact number',
            ),
          ),
        ],
      ),
    );
  }
}
