import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'screens/login.dart';
import 'screens/register.dart';

void main() async {
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    print("ERRR");
    print(e);
  }

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
