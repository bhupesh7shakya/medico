import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medico/Data/data.dart';
import 'package:medico/components/components.dart';
import 'package:medico/screens/shared/shared.dart';

class Doctors extends StatelessWidget {
  const Doctors({Key key}) : super(key: key);

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
          "Doctors",
          style: TextStyle(
            color: Components.componenet,
          ),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: Column(
        children: [
          SearchTopBar(
            title: "Search for the Doctor",
          ),
          SvgPicture.asset("assets/images/doctor.svg", width: 100),
          SizedBox(
            height: 20,
          ),
          Text(
            "SEARCH DOCTORS",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Search the different doctors with name ,category etc",
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 3,
                ),
                itemCount: doctorData.length,
                itemBuilder: (context, index) {
                  return CategoryWidget(
                    cate: doctorData[index].type,
                    function: () {
                      print("click");
                      Navigator.pushNamed(context, "/doctorlist");
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

