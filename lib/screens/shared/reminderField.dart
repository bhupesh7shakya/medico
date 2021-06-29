import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';
import 'shared.dart';

class ReminderField extends StatelessWidget {
  final String title;
  final String placeholder;
  final int length;

  const ReminderField({
    Key key,
    this.title,
    this.placeholder = "",
    this.length = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 1.0),
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Components.componenet),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        (placeholder == "")
            ? TextBox()
            : TextBox(
                hintText: placeholder,
              ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
