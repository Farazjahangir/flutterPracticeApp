import 'package:flutter/material.dart';
import 'package:practice_app/config/customColors.dart';

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String placeHolder;
  final String label;

  TextInput(
      {required this.controller,
      this.obscureText = false,
      this.placeHolder = "Enter something..",
      this.label = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: TextFormField(
        style: TextStyle(color: Color(white)),
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            label: Text(label),
            labelStyle: TextStyle(color: Color(white)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeHolder,
            hintStyle: TextStyle(color: Color(white), fontSize: 13),
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(grey)),
                borderRadius: BorderRadius.all(Radius.circular(10.0)))),
      ),
    );
  }
}
