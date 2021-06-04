import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      initialRoute: "/mobileLogin",
      routes: {
        "/loading": (context) => Loading(),
        "/app": (context) => MyApps(),
        "/loginPage": (context) => LoginPage(),
        "/mobileLogin": (context) => MobileLogin(),
      },
    ),
  );
}
