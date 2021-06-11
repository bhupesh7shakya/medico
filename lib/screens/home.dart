import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';
import 'shared/shared.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffa3ffe7),
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Components.componenet,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              "Golbhatta",
              style: TextStyle(
                color: Components.componenet,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.gps_fixed,
            color: Components.componenet,
          ),
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GridView.count(
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 1.7,
                crossAxisCount: 2,
                children: [
                  CustomCard(
                    icon: Icon(
                      Icons.medical_services,
                      color: Components.componenet,
                      size: 45,
                    ),
                    title: "Medicine",
                    onPress: () {
                      print("medicine");
                      Navigator.pushNamed(context, "/pharmacy");
                    },
                  ),
                  CustomCard(
                    icon: Icon(
                      Icons.healing_outlined,
                      color: Components.componenet,
                      size: 45,
                    ),
                    title: "Doctors",
                    onPress: () {
                      print("Doctors");
                    },
                  ),
                  CustomCard(
                    icon: Icon(
                      Icons.schedule,
                      color: Components.componenet,
                      size: 45,
                    ),
                    title: "Schedule",
                    onPress: () {
                      print("Schedule");
                    },
                  ),
                  CustomCard(
                    icon: Icon(
                      Icons.fast_forward,
                      color: Components.componenet,
                      size: 45,
                    ),
                    title: "Emergency",
                    onPress: () {
                      print("Emergency");
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
