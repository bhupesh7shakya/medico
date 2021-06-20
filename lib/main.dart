import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';
import 'screens/screens.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: Components.componenet,
      ),
      initialRoute: "/doctor",
      routes: {
        "/loading": (context) => Loading(),
        "/app": (context) => MyApps(),
        "/login": (context) => LoginPage(),
        "/mobileLogin": (context) => MobileLogin(),
        "/verify": (context) => Verify(),
        "/home": (context) => Home(),
        "/pharmacy": (context) => Pharmacy(),
        "/cart": (context) => Cart(),
        "/doctor": (context) => Doctors(),
        "/doctorlist": (context) => DoctorList(),
      },
    ),
  );
}
