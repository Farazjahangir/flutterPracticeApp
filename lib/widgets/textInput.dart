import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String placeHolder;

  TextInput(
      {required this.controller,
      this.obscureText = false,
      this.placeHolder = "Enter something.."});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: placeHolder,
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0)),
      ),
    );
  }
}
