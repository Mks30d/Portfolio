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
  int selectedIndex = 3;
  String mainHeading = "About me";
  double mainLineWidth = 122;
  double itemLineWidth = 122;
  bool isHover = false;
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
      child: Text(
        itemHeading.toUpperCase(),
        style: this.selectedIndex == selectedIndex
            ? menuItemsHeadingStyleSelected
            : menuItemsHeadingStyle,
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

                      // InkWell(
                      //   onTap: () {
                      //     setState(() {
                      //       // calledSection = Resume(),
                      //       selectedIndex=0;
                      //       selectedSection[selectedIndex];
                      //       heading = "About me";
                      //       lineWidth = 122;
                      //     });
                      //   },
                      //   onHover: (value) {
                      //     print("value= $value");
                      //     setState(() {
                      //       isHover = value;
                      //     });
                      //   },
                      //   child: Column(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Text(
                      //         "ABOUT",
                      //         // style: isHover ? menuItemsHeadingStyle1 : menuItemsHeadingStyle,
                      //         style: selectedIndex==0 ? menuItemsHeadingStyleSelected : menuItemsHeadingStyle,
                      //       ),
                      //       // Container(
                      //       //   width: 46,
                      //       //   height: 2,
                      //       //   decoration: BoxDecoration(
                      //       //     color: Colors.white,
                      //       //     borderRadius: BorderRadius.circular(50)
                      //       //   ),
                      //       // )
                      //     ],
                      //   ),
                      // ),

                      // InkWell(
                      //   onTap: (){
                      //     setState(() {
                      //       selectedIndex=1;
                      //       selectedSection[selectedIndex];
                      //       heading = "Internships";
                      //       lineWidth = 138;
                      //     });
                      //   },
                      //   child: Text(
                      //     "INTERNSHIP",
                      //     // style: menuItemsHeadingStyle,
                      //     style: selectedIndex==1 ? menuItemsHeadingStyleSelected : menuItemsHeadingStyle,
                      //   ),
                      // ),

                      // InkWell(
                      //   onTap: (){
                      //     setState(() {
                      //       selectedIndex=2;
                      //       selectedSection[selectedIndex];
                      //       heading =  "Education";
                      //       lineWidth = 125;
                      //     });
                      //   },
                      //   child: Text(
                      //     "Education".toUpperCase(),
                      //     style: selectedIndex==2 ? menuItemsHeadingStyleSelected : menuItemsHeadingStyle,
                      //   ),
                      // ),

                      // InkWell(
                      //   onTap: (){
                      //     setState(() {
                      //       selectedIndex=3;
                      //       selectedSection[selectedIndex];
                      //       heading = "Projects";
                      //       lineWidth = 100;
                      //     });
                      //   },
                      //   child: Text(
                      //     "PROJECTS",
                      //     style: selectedIndex==3 ? menuItemsHeadingStyleSelected : menuItemsHeadingStyle,
                      //   ),
                      // ),
                      // InkWell(
                      //   onTap: (){
                      //     setState(() {
                      //       selectedIndex=4;
                      //       selectedSection[selectedIndex];
                      //       heading = "Contact";
                      //       lineWidth = 103;
                      //     });
                      //   },
                      //   child: Text(
                      //     "CONTACT",
                      //     style: selectedIndex==4 ? menuItemsHeadingStyleSelected : menuItemsHeadingStyle,
                      //   ),
                      // ),
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
