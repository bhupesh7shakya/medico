import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';
import 'package:medico/screens/shared/LoginButton.dart';
import 'package:medico/screens/shared/LogoText.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Components.scaffold,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                LogoText(
                  mainTitle: "WELCOME",
                  subtitle: "Sign up to continue",
                ),
                LoginButton(
                  title: "Sign up with a Phone Number",
                  backgroundColor: Components.button,
                  function: () {
                    Navigator.pushNamed(context, "/mobileLogin");
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Text("or"),
                SizedBox(
                  height: 10,
                ),
                LoginButton(
                  title: "Sign up with Facebook",
                  backgroundColor: LinearGradient(
                    colors: [Colors.blue, Colors.deepPurple],
                  ),
                  function: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Forgot your password?",
                  style: TextStyle(
                    color: Components.componenet,
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
