import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final Icon icon;
  final Function onPress;
  const CustomCard({
    Key key,
    this.title,
    this.icon,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Components.componenet,
      borderRadius: BorderRadius.circular(10),
      onTap: onPress,
      child: Card(
        elevation: 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(
              height: 15,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
