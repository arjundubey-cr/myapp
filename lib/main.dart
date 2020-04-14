import 'package:flutter/material.dart';
import 'package:myapp/loginpage.dart';
import 'package:myapp/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "MyApp",
      home: LoginPage(),
      );
  }
}


