import 'package:flutter/material.dart';
import '../config/customColors.dart';

class Header extends StatelessWidget {
  final String title;

  Header({this.title = 'DAR | Daily Activity Record'});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
      color: const Color(header).withOpacity(0.6),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
