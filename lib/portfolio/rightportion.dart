import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:Mks/portfolio/landingpage.dart';
import 'package:Mks/portfolio/menu/about.dart';
import 'package:Mks/portfolio/menu/contact.dart';
import 'package:Mks/portfolio/menu/internship.dart';
import 'package:Mks/portfolio/menu/project.dart';
import 'package:Mks/portfolio/menu/resume.dart';

// Color textPrimaryColor = Color(0xffe7e7e7);
// Color textSecondaryColor = Color(0xff8e8e8f);
// Color primaryColor = Color(0xff1e1e1f);
// Color secondaryColor = Color(0xff373737);
// // Color blueColor = Colors.blue.shade700;
// Color blueColor = Color(0xff0254cf);
// Color bgColor = Color(0xff111111);
// Color borderColor = Color(0xff444444);

// TextStyle textStyle = TextStyle(color: textPrimaryColor, fontSize: 32, fontWeight: FontWeight.w600, fontFamily: "Poppins");
TextStyle menuMainHeadingStyle = TextStyle(
    color: textPrimaryColor,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    fontFamily: "Poppins");
TextStyle menuItemsHeadingStyle = TextStyle(
    color: Color(0xffcecdcd),
    fontSize: 13,
    fontWeight: FontWeight.w500,
    fontFamily: "Poppins");
TextStyle menuItemsHeadingStyleSelected = TextStyle(
    color: Color(0xffffffff),
    fontSize: 13,
    fontWeight: FontWeight.w500,
    fontFamily: "Poppins");
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
  int selectedIndex = 0;
  String mainHeading = "About me";
  double mainLineWidth = 122;
  double itemLineWidth = 122;
  bool isHovering = false;
  int hoveringIndex = -1;

  Map<int, Widget> selectedSection = {
    0: About(),
    1: Internship(),
    2: Resume(),
    3: Project(),
    // 4 : Contact(),
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

  Widget menuItem(int selectedIndex, String mainHeading, String itemHeading,
      double mainLineWidth, double itemLineWidth) {
    return InkWell(
      onTap: () {
        setState(() {
          this.selectedIndex = selectedIndex;
          this.mainHeading = mainHeading;
          this.mainLineWidth = mainLineWidth;
          this.itemLineWidth = itemLineWidth;
        });
      },
      onHover: (value) {
        setState(() {
          isHovering = value;
          hoveringIndex = value ? selectedIndex : -1;
          print(hoveringIndex);
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              // // height: hoveringIndex==selectedIndex ? 10:0,
              // width: 50,
              // color: Colors.red,
              ),
          Text(
            itemHeading.toUpperCase(),

            style: (this.selectedIndex == selectedIndex)
                ? menuItemsHeadingStyleSelected
                : (hoveringIndex == selectedIndex)
                    ? menuItemsHeadingStyleSelected
                    : menuItemsHeadingStyle,

            //------OR-------
            //   style: () {
            //   if(hoveringIndex==selectedIndex){
            //     return menuItemsHeadingStyleSelected;
            //   }
            //     else{
            //     if (this.selectedIndex == selectedIndex) {
            //       return menuItemsHeadingStyleSelected;
            //     } else {
            //       return menuItemsHeadingStyle;
            //     }
            //   }
            // }(),
          ),
          Container(
            width: itemLineWidth,
            height: this.selectedIndex == selectedIndex ? 3 : 0,
            decoration: BoxDecoration(
              color: Colors.white,
              // borderRadius: BorderRadius.circular(50)
            ),
          )
        ],
      ),
    );
  }

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
                        bottomLeft: Radius.circular(22)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      menuItem(0, "About me", "About", 122, 50),
                      menuItem(1, "Internships", "Internships", 138, 88),
                      menuItem(2, "Education", "Education", 125, 82),
                      menuItem(3, "Projects", "Projects", 100, 70),
                    ],
                  ),
                ),
              ),
              Positioned(
                  left: 20,
                  top: 15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mainHeading,
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
                        width: mainLineWidth,
                        decoration: BoxDecoration(
                            color: blueColor,
                            borderRadius: BorderRadius.circular(15)),
                      )
                    ],
                  )),

              // ==================================================
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: selectedSection[selectedIndex]!,
              )
            ],
          ),
        ),
      ),
    );
  }
}
