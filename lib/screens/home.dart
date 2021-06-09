import 'package:flutter/material.dart';
import 'shared/shared.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              "Golbhatta",
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.gps_fixed),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          TopBar(),
          SizedBox(
            height: 10,
          ),
          GridView.count(
            crossAxisCount: 2,
            children: [
              Card(
                child: Text("data"),
              ),
              Card(
                child: Text("data"),
              ),
              Card(
                child: Text("data"),
              ),
              Card(
                child: Text("data"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
