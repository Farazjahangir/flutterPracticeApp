import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback OnPressed;

  Button(this.title, this.OnPressed);

  @override
  Widget build(BuildContext context) {
    final style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 16));
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: style,
        onPressed: OnPressed,
        child: Text(title),
      ),
    );
  }
}
