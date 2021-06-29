import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';

class DatePicker extends StatelessWidget {
  final String date;
  final String title;
  final bool icon;
  final Function onpress;
  final double width;
  final String buttonTitle;
  const DatePicker({
    Key key,
    @required this.date,
    @required this.title,
    this.icon = true,
    this.onpress,
    this.width,
    this.buttonTitle = "Select Date",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      borderRadius: BorderRadius.circular(30),
      splashColor: Components.scaffold,
      highlightColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 1),
            child: Text(
              title,
              style: TextStyle(color: Components.componenet),
            ),
          ),
          Container(
            width: width,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Components.componenet),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  (date == null) ? buttonTitle : date,
                  style: TextStyle(color: Components.componenet),
                ),
                (icon)
                    ? Icon(Icons.date_range, color: Components.componenet)
                    : SizedBox(
                        height: 0,
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
