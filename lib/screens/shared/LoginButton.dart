import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';

class LoginButton extends StatelessWidget {
  final String title;
  final LinearGradient backgroundColor;
  final Function function;
  final bool small;
  final bool oppositeTextColor;
  final bool border;
  const LoginButton(
      {Key key,
      this.title,
      this.backgroundColor,
      this.function,
      this.small = false,
      this.oppositeTextColor = false,
      this.border = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        width: (small == true)
            ? MediaQuery.of(context).size.width * 0.41
            : MediaQuery.of(context).size.width * 0.9,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
              color: (border == true)
                  ? Components.componenet
                  : Colors.transparent),
          borderRadius: BorderRadius.circular(50),
          gradient: backgroundColor,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: (oppositeTextColor == true)
                ? Components.componenet
                : Colors.white,
          ),
        ),
      ),
    );
  }
}
