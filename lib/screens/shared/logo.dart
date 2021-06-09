
import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "MEDI",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Components.timerbg),
        ),
        Text(
          "CO",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Components.componenet,
          ),
        ),
      ],
    );
  }
}
