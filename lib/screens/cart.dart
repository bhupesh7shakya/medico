import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';
import 'package:medico/screens/shared/customContainer.dart';
import 'package:medico/screens/shared/shared.dart';

class Cart extends StatefulWidget {
  const Cart({
    Key key,
  }) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List addToCartData;

  @override
  Widget build(BuildContext context) {
    double shipping = 50.0;
    double totalAmount = 0;
    addToCartData = ModalRoute.of(context).settings.arguments;
    print(addToCartData);
    int i = 0;
    while (i < addToCartData.length) {
      totalAmount += addToCartData[i].price;
      print(totalAmount);
      i++;
    }
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
        child: (addToCartData.length == 0)
            ? Center(
                child: Text("Your have not added anythihng in the cart"),
              )
            : Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: ListView.builder(
                      itemCount: addToCartData.length,
                      itemBuilder: (context, index) {
                        return CustomContainer(
                          shopname: addToCartData[index].vender,
                          description: addToCartData[index].description,
                          medicineName: addToCartData[index].name,
                          price: addToCartData[index].price,
                          cart: false,
                          function: () {
                            setState(() {
                              addToCartData.removeAt(index);
                            });
                          },
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
                          price: totalAmount,
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        PriceDetails(
                          title: "Shipping Charge",
                          price: shipping,
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(),
                        PriceDetails(
                          title: "Grand Total",
                          price: shipping + totalAmount,
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
  final double price;
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
          "Rs " + price.toString() + "/-",
          style: TextStyle(
            fontSize: 13,
            color: Colors.black45,
          ),
        ),
      ],
    );
  }
}
