import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Text(
        "Golbhatta",
        style: TextStyle(
          color: Components.componenet,
        ),
      ),
    );
  }
}
