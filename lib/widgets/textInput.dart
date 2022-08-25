import 'package:flutter/material.dart';

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
        style: TextStyle(color: Colors.white),
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            label: Text(label),
            labelStyle: TextStyle(color: Colors.white),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeHolder,
            hintStyle: TextStyle(color: Colors.white, fontSize: 13),
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
            enabledBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(138, 158, 158, 158)),
                borderRadius: BorderRadius.all(Radius.circular(10.0)))),
      ),
    );
  }
}
