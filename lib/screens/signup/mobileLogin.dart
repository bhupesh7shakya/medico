import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';
import 'package:medico/screens/shared/LogoText.dart';

class MobileLogin extends StatelessWidget {
  const MobileLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Components.scaffold,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              LogoText(
                mainTitle: "Mobile Login",
                subtitle:
                    "Use the your own phone number so you can verify.\nPlease don't use other phone under.",
              ),
              SizedBox(
                height: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}
