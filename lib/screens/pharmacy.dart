import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medico/components/components.dart';
import 'package:medico/screens/shared/customContainer.dart';
import 'package:medico/screens/shared/shared.dart';

class Pharmacy extends StatelessWidget {
  const Pharmacy({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool searchKeyword = true;
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
              print("cart");
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
      body: Column(
        children: [
          Expanded(
              flex: 2, child: SearchTopBar(title: "Search for the medicine")),
          // SizedBox(
          //   height: 30,
          // ),
          // (searchKeyword == true)
          //     ? SvgPicture.asset(
          //         "assets/images/medicine.svg",
          //         width: 100,
          //         height: 100,
          //       )
          //     : SizedBox(
          //         height: 30,
          //       ),
          // Text("Search for Medicine"),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: ListView(
                children: [
                  CustomContainer(
                    shopname: "name",
                    description: "description",
                    medicineName: "medicineName",
                    price: 5.0,
                  ),
                  CustomContainer(
                    shopname: "name",
                    description: "description",
                    medicineName: "medicineName",
                    price: 5.0,
                  ),
                  CustomContainer(
                    shopname: "name",
                    description: "description",
                    medicineName: "medicineName",
                    price: 5.0,
                  ),
                  CustomContainer(
                    shopname: "name",
                    description: "description",
                    medicineName: "medicineName",
                    price: 5.0,
                  ),
                ],
              ),
            ),
          ),
        ],
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
