import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';

import 'LoginButton.dart';

class DoctorListCard extends StatelessWidget {
  final int id;
  final String doctorName;
  final String department;
  final String degree;
  final int price;
  final int experience;
  final int likes;
  final int phoneNumber;
  final String imageUrl;
  const DoctorListCard({
    Key key,
    this.doctorName,
    this.department,
    this.degree,
    this.price,
    this.experience,
    this.likes,
    this.phoneNumber,
    this.imageUrl,
    this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                        imageUrl,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dr." + doctorName,
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                department,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                degree,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          IconButton(
                              icon: Icon(Icons.share,
                                  size: 18, color: Components.componenet),
                              onPressed: null),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rs " + price.toString(),
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            experience.toString() + " yrs of exp.",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          TextButton.icon(
                            onPressed: null,
                            icon: Icon(Icons.favorite, color: Colors.red),
                            label: Text(
                              likes.toString(),
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: null,
                child: Text('View Profile'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LoginButton(
                oppositeTextColor: true,
                border: true,
                small: true,
                title: "Call",
                backgroundColor: null,
                function: () {
                  print("phone number" + phoneNumber.toString());
                },
              ),
              LoginButton(
                small: true,
                title: "Book",
                backgroundColor: Components.button,
                function: () {
                  print("call");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
