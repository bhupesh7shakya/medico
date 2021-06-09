import 'package:flutter/material.dart';

class GridBox extends StatelessWidget {
  const GridBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 25,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
