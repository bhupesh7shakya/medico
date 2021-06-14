import 'package:flutter/material.dart';
import 'package:medico/Data/data.dart';
import 'package:medico/components/components.dart';
import 'package:medico/modals/medicine.dart';
import 'package:medico/screens/shared/customContainer.dart';
import 'package:medico/screens/shared/shared.dart';

class Pharmacy extends StatefulWidget {
  const Pharmacy({Key key}) : super(key: key);

  @override
  _PharmacyState createState() => _PharmacyState();
}

class _PharmacyState extends State<Pharmacy> {
  List addToCart;
  @override
  Widget build(BuildContext context) {
    // bool searchKeyword = true;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffa3ffe7),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Components.componenet,
          ),
          onPressed: () {
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
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/cart", arguments: addToCart);
            },
            icon: Icon(
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
          SearchTopBar(title: "Search for the medicine"),
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
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return CustomContainer(
                    shopname: data[index].vender,
                    description: data[index].description,
                    medicineName: data[index].name,
                    price: data[index].price,
                    function: () {
                      // print(index);
                      Medicine obj = data[index];
                      addToCart.add(obj);
                      print(addToCart.length);
                    },
                  );
                },
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
