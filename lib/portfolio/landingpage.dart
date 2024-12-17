import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Mks/portfolio/leftportion.dart';
import 'package:Mks/portfolio/rightportion.dart';
import 'package:Mks/portfolio/sidebar.dart';

Color textPrimaryColor = Color(0xffe7e7e7);
// Color textSecondaryColor = Color(0xff8e8e8f);
Color textSecondaryColor = Color(0xff979898);
Color primaryColor = Color(0xff1e1e1f);
Color secondaryColor = Color(0xff373737);
// Color blueColor = Colors.blue.shade700;
Color blueColor = Color(0xff0254cf);
Color bgColor = Color(0xff111111);
Color borderColor = Color(0xff444444);

// TextStyle textStyle = TextStyle(color: textPrimaryColor, fontSize: 32, fontWeight: FontWeight.w600, fontFamily: "Poppins");
TextStyle menuMainHeadingStyle = TextStyle(color: textPrimaryColor, fontSize: 32, fontWeight: FontWeight.w600, fontFamily: "Poppins");
TextStyle menuItemsHeadingStyle = TextStyle(color: textPrimaryColor, fontSize: 32, fontWeight: FontWeight.w600, fontFamily: "Poppins");
TextStyle mainHeadingStyle = TextStyle(color: textPrimaryColor, fontSize: 32, fontWeight: FontWeight.w600, fontFamily: "Poppins");
TextStyle titleStyle = TextStyle(color: textPrimaryColor, fontSize: 15, fontWeight: FontWeight.w700, fontFamily: "Poppins");
TextStyle subtitleStyle = TextStyle(color: textPrimaryColor, fontSize: 15, fontWeight: FontWeight.w300, fontFamily: "Poppins");

class LandingPage extends StatefulWidget {
  // Color textColor = Color(0xfffafafa);
  // Color textColor1 = Color(0xfff8f8f8);
  // Color primaryColor = Color(0xff1e1e1f);
  // Color secondaryColor = Color(0xff363637);
  // Color blueColor = Colors.blueAccent;
  // Color bgColor = Color(0xff121212);
  // Color borderColor = Color(0xff444444);
  // Color textColor = Color(0xfffafafa);
  // Color primaryColor = Color(0xff1e1e1f);
  // Color secondaryColor = Color(0xff373737);
  // Color blueColor = Colors.blueAccent;
  // Color bgColor = Color(0xff111111);
  // Color borderColor = Color(0xff444444);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bgColor,
        child: Row(children: [

          LeftPortion(),

          RightPortion(),
        ]),
      ),
    );
  }
}
