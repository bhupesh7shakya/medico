import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medico/components/components.dart';
import 'package:medico/screens/shared/shared.dart';

class Pharmacy extends StatelessWidget {
  const Pharmacy({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffa3ffe7),
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Components.componenet,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Pharmacy",
          style: TextStyle(
            color: Components.componenet,
          ),
        ),
        centerTitle: false,
        actions: [
          GestureDetector(
            onTap: () {
              print("card");
            },
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Components.componenet,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchTopBar(title: "Search for the medicine"),
            SizedBox(
              height: 10,
            ),
            // SvgPicture.asset(
            //   "assets/images/medicine.svg",
            //   width: 100,
            //   height: 100,
            // ),
            // SizedBox(
            //   height: 30,
            // ),
            // Text("Search for Medicine"),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Card(
                      elevation: 3,
                      child: ListTile(
                        leading: SvgPicture.asset(
                          "assets/images/medicine.svg",
                          width: 15,
                          height: 15,
                        ),
                        trailing: Text("Rs50.96"),
                        title: Text(
                          "Decold",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "15 Tabs per Strip",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
