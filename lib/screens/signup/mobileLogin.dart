import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';
import 'package:medico/screens/shared/LoginButton.dart';
import 'package:medico/screens/shared/LogoText.dart';

class MobileLogin extends StatelessWidget {
  const MobileLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Components.scaffold,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              LogoText(
                mainTitle: "Mobile Login",
                subtitle:
                    "Use the your own phone number so you can verify.\nPlease don't use other phone under.",
              ),
              SizedBox(height: 15),
              TextField(
                keyboardType: TextInputType.phone,
                maxLength: 10,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone_android,
                      color: Components.componenet,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Components.componenet),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    hintText: "Enter your Phone number"),
              ),
              SizedBox(
                height: 20,
              ),
              LoginButton(
                title: "Sign up",
                backgroundColor: Components.button,
                function: () {
                  Navigator.pushReplacementNamed(context, "/verify");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
