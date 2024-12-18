import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Mks/portfolio/landingpage.dart';

// TextStyle textStyle = TextStyle(color: textPrimaryColor, fontSize: 32, fontWeight: FontWeight.w600, fontFamily: "Poppins");
TextStyle mainHeadingStyle = TextStyle(color: textPrimaryColor, fontSize: 23, fontWeight: FontWeight.w800, fontFamily: "Poppins");
TextStyle titleStyle = TextStyle(color: textPrimaryColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: "Poppins");
TextStyle subtitleStyle = TextStyle(color: textSecondaryColor, fontSize: 13, fontFamily: "Poppins");

class Resume extends StatelessWidget {
  const Resume({super.key});

  Widget line(double height) {
    return Container(
      height: height,
      width: 1,
      color: textSecondaryColor,
    );
  }

  Widget circle() {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(1),
            offset: Offset(0, -2),
            blurRadius: 8,
            spreadRadius: 8,
          ),
        ]
      ),
      child: Center(
        child: Container(
          width: 7,
          height: 7,
          decoration: BoxDecoration(
              color: blueColor,
              borderRadius: BorderRadius.circular(50)),
        ),
      ),
    );
  }

  Widget education(String course, String year, String college) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(course, style: titleStyle,),
        Padding(
          padding: const EdgeInsets.only(top: 4, bottom: 3),
          child: Text(year, style: TextStyle(fontSize: 13, color: blueColor)),
        ),
        Text(college, style: subtitleStyle),
        SizedBox(
          height: 25,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22),
      child: Container(
          height: 435,
          width: double.infinity,
          decoration: BoxDecoration(
          ),

          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: blueColor,
                          borderRadius: BorderRadius.circular(11)),
                      child: Center(
                        // child: Icon(
                        //   Icons.menu_book_outlined,
                        //   color: blueColor,
                        // ),
                        child: Image.asset("assets/images/icons/education(2).png", height: 30,),
                      ),
                    ),
                  ),
                  line(26),
                  circle(),
                  line(82),
                  circle(),
                  line(80),
                  circle(),
                ],
              ),
              SizedBox(
                width: 13,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 11, bottom: 22),
                    child: Text(
                      "Education".toUpperCase(),
                      style: mainHeadingStyle,
                    ),
                  ),

                  // Container(
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text("Master of Computer Application (M.C.A.)", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: textPrimaryColor),),
                  //       Padding(
                  //         padding: const EdgeInsets.only(top: 3, bottom: 3),
                  //         child: Text("2023-25", style: TextStyle(fontSize: 15, color: textPrimaryColor)),
                  //       ),
                  //       Text("JSS Academy of Technical Education, Noida", style: TextStyle(fontSize: 15, color: textPrimaryColor)),
                  //     ],
                  //   ),
                  // ),

                  education(
                      "Master of Computer Application (M.C.A.)",
                    "2023-25", "JSS Academy of Technical Education, Noida"
                  ),
                  education(
                      "Bachelor of Computer Application (B.C.A.)",
                    "2019-22", "Gandhi Faiz-e-aam (PG) College, Shahjahanpur"
                  ),
                  education(
                      "10+2 (Intermediate)",
                    "2018-19", "Holy Angels' School, Shahjahanpur"
                  ),
                ],
              )
            ],
          )),
    );
  }
}
