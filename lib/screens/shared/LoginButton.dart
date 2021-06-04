import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String title;
  final LinearGradient backgroundColor;
  final Function function;

  const LoginButton({Key key, this.title, this.backgroundColor, this.function})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: backgroundColor,
        ),
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
