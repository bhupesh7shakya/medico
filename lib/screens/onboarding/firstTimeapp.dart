import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:medico/components/components.dart';
import 'package:medico/screens/shared/onboarding.dart';

class MyApps extends StatelessWidget {
  const MyApps({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Components.scaffold,
        body: TabBarView(children: [
          OnBoarding(
            title: "All-in-One",
            subtitle: "Apps",
            imagePath: "assets/images/apps.svg",
          ),
          OnBoarding(
            title: "One click",
            subtitle: "Emergency Service",
            imagePath: "assets/images/oneClick.svg",
          ),
          OnBoarding(
            title: "Ask The",
            subtitle: "Expert",
            imagePath: "assets/images/expert.svg",
          ),
        ]),
        bottomNavigationBar: BottomAppBar(
          color: Components.scaffold,
          child: Row(
            children: [
              Divider(
                color: Components.timerbg,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.centerLeft,
                  height: 50,
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: Components.timerbg, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: TabBar(
                        indicator: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Components.componenet,
                        ),
                        isScrollable: true,
                        tabs: [
                          Tab(
                            child: Text(""),
                          ),
                          Tab(
                            child: Text(""),
                          ),
                          Tab(
                            child: Text(""),
                          ),
                        ],
                      ),
                    ),),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.centerRight,
                  height: 50,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Next",
                      style: TextStyle(
                        color: Components.timerbg,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
