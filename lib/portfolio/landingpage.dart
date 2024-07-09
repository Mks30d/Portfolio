import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/portfolio/leftportion.dart';
import 'package:portfolio/portfolio/rightportion.dart';
import 'package:portfolio/portfolio/sidebar.dart';

class LandingPage extends StatefulWidget {
  // Color textColor = Color(0xfffafafa);
  // Color textColor1 = Color(0xfff8f8f8);
  // Color primaryColor = Color(0xff1e1e1f);
  // Color secondaryColor = Color(0xff363637);
  // Color blueColor = Colors.blueAccent;
  // Color bgColor = Color(0xff121212);
  // Color borderColor = Color(0xff444444);
  Color textColor = Color(0xfffafafa);
  Color primaryColor = Color(0xff1e1e1f);
  Color secondaryColor = Color(0xff373737);
  Color blueColor = Colors.blueAccent;
  Color bgColor = Color(0xff111111);
  Color borderColor = Color(0xff444444);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: widget.bgColor,
        child: Row(children: [

          LeftPortion(),

          RightPortion(),
        ]),
      ),
    );
  }
}
