import 'package:flutter/material.dart';
import 'package:gsg_flutter/routes.dart';
import 'package:gsg_flutter/screens/home.dart';
import 'package:gsg_flutter/screens/login.dart';
import 'package:gsg_flutter/screens/main_app.dart';
import 'package:gsg_flutter/screens/signup.dart';

void main() {
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      Routes.login: (context) => Login(),
      Routes.home: (context) => Home(),
      Routes.signup: (context) => Signup(),
      Routes.main: (context) => MainApp(),
    },
     home: Login()));
}

// Built-in widgets
// MatrialApp - Scaffold - Center - Text
// AppBar - Icon - Column - Row - Container
// Images (Network - Assets)
