import 'package:flutter/material.dart';
import 'package:plannus_proto/Init.dart';
import 'package:plannus_proto/LogIn.dart';
import 'package:plannus_proto/SignUp.dart';
import 'package:plannus_proto/Home.dart';
import 'package:plannus_proto/MyProfile.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/', // for testing purposes
    routes: {
      '/': (context) => Init(),
      '/login': (context) => LogIn(),
      '/signup': (context) => SignUp(),
      '/home': (context) => Home(),
      '/myProfile': (context) => MyProfile(),
    },
  ));
}

