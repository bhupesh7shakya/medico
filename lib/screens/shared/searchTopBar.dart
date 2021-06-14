import 'package:flutter/material.dart';
import 'package:medico/screens/shared/shared.dart';

class SearchTopBar extends StatelessWidget {
  final String title;
  const SearchTopBar({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          color: Color(0xffa3ffe7),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 25, 20, 10),
          child: TextBox(
            fill: true,
            hintText: title,
            icon: Icon(Icons.search),
          ),
        ),
      ],
    );
  }
}
