import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/portfolio/landingpage.dart';
import 'package:portfolio/portfolio/menu/about.dart';
import 'package:portfolio/portfolio/menu/contact.dart';
import 'package:portfolio/portfolio/menu/internship.dart';
import 'package:portfolio/portfolio/menu/project.dart';
import 'package:portfolio/portfolio/menu/resume.dart';

// Color textPrimaryColor = Color(0xffe7e7e7);
// Color textSecondaryColor = Color(0xff8e8e8f);
// Color primaryColor = Color(0xff1e1e1f);
// Color secondaryColor = Color(0xff373737);
// // Color blueColor = Colors.blue.shade700;
// Color blueColor = Color(0xff0254cf);
// Color bgColor = Color(0xff111111);
// Color borderColor = Color(0xff444444);

// TextStyle textStyle = TextStyle(color: textPrimaryColor, fontSize: 32, fontWeight: FontWeight.w600, fontFamily: "Poppins");
TextStyle menuMainHeadingStyle = TextStyle(color: textPrimaryColor, fontSize: 30, fontWeight: FontWeight.w600, fontFamily: "Poppins");
TextStyle menuItemsHeadingStyle = TextStyle(color: textPrimaryColor, fontSize: 13, fontWeight: FontWeight.w500, fontFamily: "Poppins");
TextStyle menuItemsHeadingStyle1 = TextStyle(color: textPrimaryColor, fontSize: 15, fontWeight: FontWeight.w600, fontFamily: "Poppins");
// TextStyle mainHeadingStyle = TextStyle(color: textPrimaryColor, fontSize: 32, fontWeight: FontWeight.w600, fontFamily: "Poppins");
// TextStyle titleStyle = TextStyle(color: textPrimaryColor, fontSize: 15, fontWeight: FontWeight.w700, fontFamily: "Poppins");
// TextStyle subtitleStyle = TextStyle(color: textPrimaryColor, fontSize: 15, fontWeight: FontWeight.w300, fontFamily: "Poppins");


class RightPortion extends StatefulWidget {
  @override
  State<RightPortion> createState() => _RightPortionState();
}

class _RightPortionState extends State<RightPortion> {
  // TextStyle textStyle = TextStyle(
  //     fontSize: 15, fontWeight: FontWeight.w500, color: textPrimaryColor
  // );
  var calledSection = About();
  int selectedIndex =1;
  String heading = "About me";
  double lineWidth = 150;
  bool isHover = false;

  Map<int, Widget> selectedSection = {
    0 : About(),
    1 : Internship(),
    2 : Resume(),
    3 : Project(),
    4 : Contact(),
  };

  // Widget menuItem(String menuTitle, String heading,underlineWidth) {
  //   return InkWell(
  //     onTap: () {
  //       setState(() {
  //         selectedIndex=4;
  //         selectedSection[selectedIndex];
  //         heading = "Internship";
  //         underlineWidth = underlineWidth;
  //       });
  //     },
  //     child: Text(
  //       menuTitle,
  //       style: textStyle,
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 80, left: 11, top: 30, bottom: 30),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: Container(
          width: 800,
          height: double.infinity,
          decoration: BoxDecoration(
              color: primaryColor,
              // borderRadius: BorderRadius.circular(22),
              border: Border.all(color: borderColor)),
          child: Stack(
            children: [
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  height: 50,
                  width: 500,
                  decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(22),
                        bottomLeft: Radius.circular(22)
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            // calledSection = Resume(),
                            selectedIndex=0;
                            selectedSection[selectedIndex];
                            heading = "About me";
                            lineWidth = 150;
                          });
                        },
                        onHover: (value) {
                          print("value= $value");
                          setState(() {
                            isHover = value;
                          });
                        },
                        child: Text(
                          "ABOUT",
                          style: isHover ? menuItemsHeadingStyle1 : menuItemsHeadingStyle,
                        ),
                      ),

                      InkWell(
                        onTap: (){
                          setState(() {
                            selectedIndex=1;
                            selectedSection[selectedIndex];
                            heading = "Internships";
                            lineWidth = 170;
                          });
                        },
                        child: Text(
                          "INTERNSHIP",
                          style: menuItemsHeadingStyle,
                        ),
                      ),

                      InkWell(
                        onTap: (){
                          setState(() {
                            selectedIndex=2;
                            selectedSection[selectedIndex];
                            heading = "Resume";
                            lineWidth = 122;
                          });
                        },
                        child: Text(
                          "RESUME",
                          style: menuItemsHeadingStyle,
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            selectedIndex=3;
                            selectedSection[selectedIndex];
                            heading = "Projects";
                            lineWidth = 120;
                          });
                        },
                        child: Text(
                          "PROJECTS",
                          style: menuItemsHeadingStyle,
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            selectedIndex=4;
                            selectedSection[selectedIndex];
                            heading = "Contact";
                            lineWidth = 125;
                          });
                        },
                        child: Text(
                          "CONTACT",
                          style: menuItemsHeadingStyle,
                        ),
                      ),

                      // menuItem("INTERNSHIP", "Internship", 99 ),

                    ],
                  ),
                ),
              ),
              Positioned(
                  left: 20,
                  top: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        heading,
                        style: menuMainHeadingStyle,
                        // style: TextStyle(
                        //   fontSize: 22,
                        //   color: textPrimaryColor,
                        //   fontWeight: FontWeight.w600,
                        // ),
                      ),
                      // Text("data= $selectedIndex", style: textStyle,),
                      Container(
                        height: 4,
                        width: lineWidth,
                        decoration: BoxDecoration(
                            color: blueColor,
                            borderRadius: BorderRadius.circular(15)),
                      )
                    ],
                  )
              ),

              // ==================================================
              Positioned(
                  bottom: 0, left: 0, right: 0,
                  child: selectedSection[selectedIndex]! ,
              )
            ],
          ),
        ),
      ),
    );
  }
}

