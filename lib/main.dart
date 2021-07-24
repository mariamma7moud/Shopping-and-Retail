import 'package:flutter/material.dart';
import 'package:shopping/loginPage.dart';
import 'package:shopping/startScreen.dart';

void main() {
  runApp(MyShoppingApp());
}

class MyShoppingApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}