import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';
import 'package:medico/screens/shared/LoginButton.dart';
import 'package:medico/screens/shared/LogoText.dart';

class Verify extends StatelessWidget {
  const Verify({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Components.scaffold,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              LogoText(
                mainTitle: "Verification",
                subtitle: "A code has been sent please type to verify",
              ),
              TextField(
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 25,
              ),
              LoginButton(
                backgroundColor: Components.button,
                function: () {
                  
                  Navigator.pushReplacementNamed(context, "/home");
                },
                title: "Verify",
              )
            ],
          ),
        ),
      ),
    );
  }
}
