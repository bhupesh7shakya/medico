import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';
import 'package:medico/Data/data.dart';
import 'package:medico/screens/shared/shared.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({Key key}) : super(key: key);

  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  @override
  Widget build(BuildContext context) {
    String data = ModalRoute.of(context).settings.arguments;
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
          data,
          style: TextStyle(
            color: Components.componenet,
          ),
        ),
        centerTitle: false,
        elevation: 0,
        actions: [
          Icon(
            Icons.gps_fixed,
            size: 20,
            color: Components.componenet,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 15, 0),
            child: LocationWidget(),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 35,
            decoration: BoxDecoration(
              color: Color(0xffa3ffe7),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Result showing Gerneal doctors",
              style: TextStyle(
                color: Components.componenet,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 28,
                                    backgroundImage: NetworkImage(
                                      doctorData[index].imgUrl,
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
                                    Stack(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Dr. John Doe",
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "General Physician",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black54,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "MD- General Medicine, Lorem ipsum",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black54,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          top: -9,
                                          right: -17.5,
                                          child: IconButton(
                                              icon: Icon(Icons.share,
                                                  size: 18,
                                                  color: Components.componenet),
                                              onPressed: null),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Rs 200",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        Text(
                                          "14 yrs of exp.",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextButton.icon(
                                          onPressed: null,
                                          icon: Icon(Icons.favorite,
                                              color: Colors.red),
                                          label: Text(
                                            "126",
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            LoginButton(
                              oppositeTextColor: true,
                              border: true,
                              small: true,
                              title: "Call",
                              backgroundColor: null,
                              function: () {
                                print("call");
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
                  ),
                );
              },
            ),
          ),
        ],
      ),
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.fromLTRB(0, 60, 10, 0),
      //   child: FloatingActionButton(
      //     onPressed: () {},
      //     backgroundColor: Components.componenet,
      //     child: Icon(
      //       Icons.settings,
      //     ),
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
    );
  }
}
