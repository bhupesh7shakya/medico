import 'package:flutter/material.dart';
import 'package:medico/Data/data.dart';
import 'package:medico/components/components.dart';
import 'package:medico/screens/shared/customContainer.dart';
import 'package:medico/screens/shared/shared.dart';

class Cart extends StatelessWidget {
  final List addToCart;
  const Cart({Key key, this.addToCart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          "Cart",
          style: TextStyle(
            color: Components.componenet,
          ),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 10, 15, 0),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return CustomContainer(
                    shopname: data[index].vender,
                    description: data[index].description,
                    medicineName: data[index].name,
                    price: data[index].price,
                    cart: false,
                  );
                },
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Price Details",
                        style: TextStyle(
                          fontSize: 25,
                          color: Components.componenet,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  PriceDetails(
                    title: "Sub total",
                    price: 100,
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  PriceDetails(
                    title: "Shipping Charge",
                    price: 100,
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  PriceDetails(
                    title: "Grand Total",
                    price: 200,
                    fontSize: 25,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  LoginButton(
                    backgroundColor: Components.button,
                    function: () {
                      print("payNow");
                    },
                    title: "Pay now",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PriceDetails extends StatelessWidget {
  final String title;
  final int price;
  final double fontSize;
  final Color color;
  const PriceDetails({
    Key key,
    this.title,
    this.price,
    this.fontSize,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            color: color,
          ),
        ),
        Text(
          "Rs" + price.toString(),
          style: TextStyle(
            fontSize: 13,
            color: Colors.black45,
          ),
        ),
      ],
    );
  }
}
