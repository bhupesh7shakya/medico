import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medico/components/components.dart';
import 'package:medico/screens/screens.dart';
import 'package:medico/screens/shared/shared.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key key}) : super(key: key);

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  String date;

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final date = showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(DateTime.now().year),
        lastDate: DateTime(DateTime.now().year + 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Components.scaffold,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            CupertinoIcons.back,
            color: Components.componenet,
          ),
        ),
        title: Text(
          "Set Reminder",
          style: TextStyle(
            color: Components.componenet,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Container(
            child: Column(
              children: [
                ReminderField(
                  title: "Drug Name",
                  placeholder: "Drug name",
                ),
                ReminderField(
                  title: "Concern",
                  placeholder: "Concern",
                ),
                ReminderField(
                  title: "Dosage",
                  placeholder: "No of Dosages",
                ),
                ReminderField(
                  title: "Doctor",
                  placeholder: "Type Doctor's name",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DatePicker(
                      date: date,
                      title: "Start",
                      width: 150,
                      onpress: null,
                    ),
                    DatePicker(
                      date: date,
                      title: "End",
                      width: 150,
                      onpress: null,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DatePicker(
                      date: date,
                      title: "Time",
                      width: 100,
                      onpress: null,
                      icon: false,
                      buttonTitle: "Select Time",
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: Components.button,
                        ),
                        child: Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
