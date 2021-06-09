import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';

class TextBox extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final bool fill;
  final int length;
  final TextInputType keyboardType;

  const TextBox(
      {Key key,
      this.hintText,
      this.icon,
      this.fill,
      this.length,
      this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      maxLength: length,
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: fill,
          prefixIcon: icon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Components.componenet),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          hintText: hintText),
    );
  }
}
