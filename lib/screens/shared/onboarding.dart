import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medico/components/components.dart';

class OnBoarding extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  const OnBoarding({
    Key key,
    this.title,
    this.subtitle,
    this.imagePath,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 40, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: Components.componenet,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Components.componenet,
              thickness: 5.0,
              endIndent: 240,
            ),
            SvgPicture.asset(
              imagePath,
              width: 400,
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}
