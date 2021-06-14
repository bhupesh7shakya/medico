import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medico/components/components.dart';

class CustomContainer extends StatelessWidget {
  final String shopname;
  final String medicineName;
  final String description;
  final double price;
  final bool cart;
  final Function function;
  const CustomContainer({
    Key key,
    this.shopname,
    this.medicineName,
    this.description,
    this.price,
    this.cart = true,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10.0),
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 3,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: SvgPicture.asset(
                "assets/images/medicine.svg",
                width: 30,
                height: 30,
              ),
            ),
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shopname,
                    style: TextStyle(color: Colors.black54),
                  ),
                  Text(
                    medicineName,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(color: Colors.black54),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price.toString(),
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          (cart == true) ? "Add to cart" : "Remove from cart",
                          style: TextStyle(
                            color: Components.componenet,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: function,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
