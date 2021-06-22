import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';
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
        children: [
          Container(
            width: double.infinity,
            height: 35,
            decoration: BoxDecoration(
              color: Color(0xffa3ffe7),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 60, 10, 0),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Components.componenet,
          child: Icon(
            Icons.settings,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
    );
  }
}
