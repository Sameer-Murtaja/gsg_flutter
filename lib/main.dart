import 'package:flutter/material.dart';
import 'package:gsg_flutter/routes.dart';
import 'package:gsg_flutter/screens/freelancer_details.dart';
import 'package:gsg_flutter/screens/home.dart';
import 'package:gsg_flutter/screens/main_nav_screen.dart';
import 'package:gsg_flutter/screens/signup.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.login: (context) => Login(),
        Routes.home: (context) => Home(),
        Routes.signup: (context) => Signup(),
        Routes.allProducts: (context) => MainNavScreen(),
        Routes.freelancerDetails: (context) => FreelancerDetails(),
      },
      home: MainNavScreen(),
    ),
  );
}

// Built-in widgets
// MatrialApp - Scaffold - Center - Text
// AppBar - Icon - Column - Row - Container
// Images (Network - Assets)

//https://www.linkedin.com /in/ahmedfathyalex/edit/forms/certification/new/  ?profileFormEntryPoint=PROFILE_COMPLETION_HUB
// https://www.news.com/news/sports?type=football
// Endpoint [baseurl / path ? queries]
