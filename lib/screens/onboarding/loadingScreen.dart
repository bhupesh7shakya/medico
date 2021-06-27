import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medico/components/components.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void delayed() async {
    Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, '/app');
  }

  @override
  void initState() {
    super.initState();
    delayed();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Components.scaffold,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/doctor.svg",
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Components.componenet,
              ),
            ),
            SizedBox(
              height: 45,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Components.componenet),
            ),
          ],
        ),
      ),
    );
  }
}
