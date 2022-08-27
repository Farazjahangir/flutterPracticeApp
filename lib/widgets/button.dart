import 'package:flutter/material.dart';
import '../config/customColors.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback OnPressed;

  Button(this.title, this.OnPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Color(buttonPrimary), textStyle: TextStyle(fontSize: 16)),
        onPressed: OnPressed,
        child: Text(title),
      ),
    );
  }
}
