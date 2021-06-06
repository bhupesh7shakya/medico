import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';

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
          Icon(Icons.location_city)
        ],
      ),
    );
  }
}
