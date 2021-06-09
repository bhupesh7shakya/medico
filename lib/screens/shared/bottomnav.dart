import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Components.componenet,
      unselectedItemColor: Components.timerbg,
      showUnselectedLabels: false,
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: "Appoitments",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: "message",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "notification",
        ),
      ],
      onTap: (index) {
        print(index);
        setState(() {
          currentIndex = index;
        });
      },
    );
  }
}
