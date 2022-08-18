import 'package:flutter/material.dart';

import 'screens/login.dart';
import 'screens/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String? selectedRoute;

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      routes: {'Login': (ctx) => Login(), 'Register': (ctx) => Register()},
      initialRoute: 'Login',
    );
  }
}
