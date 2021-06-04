import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoText extends StatelessWidget {
  final String mainTitle;
  final String subtitle;

  const LogoText({Key key, this.mainTitle, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        SvgPicture.asset(
          "assets/images/doctor.svg",
          width: 80,
          height: 80,
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          mainTitle,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 11,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
