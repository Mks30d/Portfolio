import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:Mks/portfolio/landingpage.dart';
import 'package:url_launcher/url_launcher.dart';

TextStyle mainHeadingStyle = TextStyle(
    color: textPrimaryColor,
    fontSize: 32,
    fontWeight: FontWeight.w600,
    fontFamily: "Poppins");
TextStyle titleStyle = TextStyle(
    color: textPrimaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: "Poppins");
TextStyle subtitleStyle = TextStyle(
    color: textSecondaryColor,
    fontSize: 13,
    fontWeight: FontWeight.w200,
    fontFamily: "Poppins");
TextStyle linkStyle = TextStyle(
    color: textPrimaryColor,
    fontSize: 13,
    fontWeight: FontWeight.w200,
    fontFamily: "Poppins");

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  List<String> images = [
    "project-6.png",
    "project-5.jpg",
    "project-1.png",
    "project-2.png",
    "project-3.png",
    "project-4.png",
    "project-7.png",
    "project-8.png",
    "project-9.png",
  ];

  bool isHovering = false;
  int hoveringIndex = -1;

  // Widget imageCardInitial(String image) {
  //   return Container(
  //     height: 122,
  //     width: 215,
  //     decoration: BoxDecoration(
  //         // color: blueColor,
  //         borderRadius: BorderRadius.circular(11),
  //         border: Border.all(color: borderColor, width: 1),
  //         boxShadow: [
  //           // BoxShadow(
  //           //   color: Color(0x000000).withOpacity(1),
  //           //   offset: Offset(12, 13),
  //           //   blurRadius: 18,
  //           //   spreadRadius: -5,
  //           // )
  //         ]),
  //     child: ClipRRect(
  //       borderRadius: BorderRadius.circular(11),
  //       child: Image(
  //         image: AssetImage("assets/images/projects/$image"),
  //         fit: BoxFit.fill,
  //       ),
  //     ),
  //   );
  // }
  //
  // Widget imageCardOnHovering(String image) {
  //   return Stack(children: [
  //     Container(
  //       height: 122,
  //       width: 215,
  //       decoration: BoxDecoration(
  //           // color: blueColor,
  //           borderRadius: BorderRadius.circular(11),
  //           border: Border.all(color: borderColor, width: 1),
  //           ),
  //       child: ClipRRect(
  //         borderRadius: BorderRadius.circular(11),
  //         // child: Image(
  //         //   image: AssetImage("assets/images/projects/${image}"),
  //         //   fit: BoxFit.fill,
  //         // ),
  //         child: Transform.scale(
  //           scale: 1.1,
  //           child: Image(
  //               image: AssetImage("assets/images/projects/$image"),
  //               fit: BoxFit.fill,
  //             ),
  //         ),
  //       ),
  //     ),
  //     Container(
  //       height: 122,
  //       width: 215,
  //       decoration: BoxDecoration(
  //         color: Color(0x67000000),
  //         borderRadius: BorderRadius.circular(11),
  //         border: Border.all(color: borderColor, width: 1),
  //       ),
  //     ),
  //     Positioned(
  //       top: 35,
  //       left: 90,
  //       child: Container(
  //           height: 45,
  //           width: 50,
  //           decoration: BoxDecoration(
  //               color: primaryColor, borderRadius: BorderRadius.circular(11)),
  //           child: Icon(
  //             Icons.remove_red_eye,
  //             color: blueColor,
  //           )),
  //     ),
  //   ]);
  // }

  Widget imageCard(String image, bool isHovering, String githubLink, String liveLink) {
    return Stack(
      children: [
        Container(
          height: 122,
          width: 215,
          decoration: BoxDecoration(
            // color: blueColor,
            borderRadius: BorderRadius.circular(11),
            border: Border.all(color: borderColor, width: 1),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(11),
            child: Transform.scale(
              scale: isHovering? 1.1 : 1.0,
              child: Image(
                image: AssetImage("assets/images/projects/$image"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),

//========== OnHovering ===========
//In Dart, the three dots (...) are known as the spread operator. It allows you to spread the elements of a collection (such as a list) into another collection. When used inside a collection literal, it inserts all the elements of the given collection into the new collection.
        if(isHovering)...[
          Container(
            height: 122,
            width: 215,
            decoration: BoxDecoration(
              color: Color(0x83000000),
              borderRadius: BorderRadius.circular(11),
              border: Border.all(color: borderColor, width: 1),
            ),
          ),
          // Positioned(
          //   top: 35,
          //   left: 90,
          //   child: InkWell(
          //     onTap: () {
          //       launchUrl(
          //           Uri.parse(link),
          //           mode: LaunchMode.externalApplication
          //       );
          //     },
          //     child: Container(
          //         height: 45,
          //         width: 50,
          //         decoration: BoxDecoration(
          //             color: primaryColor, borderRadius: BorderRadius.circular(11)),
          //         child: Icon(
          //           Icons.remove_red_eye,
          //           color: blueColor,
          //         )),
          //   ),
          // ),

          Positioned(
            top: 48,
            left: 43,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    launchUrl(
                        Uri.parse(githubLink),
                        mode: LaunchMode.externalApplication
                    );
                  },
                  child: Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                          color: blueColor,
                          borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(child: Text("GitHub".toUpperCase(), style: linkStyle,)),
                  ),
                ),
                SizedBox(width: 11,),
                InkWell(
                  onTap: () {
                    launchUrl(
                        Uri.parse(liveLink),
                        mode: LaunchMode.externalApplication
                    );
                  },
                  child: Container(
                    height: 30,
                    width: 60,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(child: Text("Live".toUpperCase(), style: linkStyle,)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ]
    );
  }


  Widget projectCard(String image, String title, String subtitle, int index, String githubLink, String liveLink) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // isHovering && hoveringIndex == index ? imageCardOnHovering(image) : imageCard(image),
        InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isHovering = value;
                // hoveringIndex = value ? index : -1;
                value ? hoveringIndex = index : hoveringIndex = -1;
              });
            },
            // child: (hoveringIndex == index) ? imageCardOnHovering(image) : imageCard(image),
          child: imageCard(image, (hoveringIndex == index) , githubLink, liveLink),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6, top: 4),
          child: Container(
            width: 215,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // "Student App",
                  title,
                  style: titleStyle
                ),
                Text(
                  // "Student App Applications",
                  subtitle,
                  style: subtitleStyle,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  //=========Linear gradient above container in stack====================
  // Container(
  // height: 122,
  // width: 215,
  // // color: Colors.red,
  // decoration: BoxDecoration(
  // borderRadius: BorderRadius.circular(11),
  // gradient: LinearGradient(
  // colors: [
  // Color(0xdb000000),
  // Color(0x00000000),
  // ],
  // stops: [0, 0.99],
  // begin: Alignment.bottomCenter,
  // end: Alignment.topCenter
  // ),
  //
  // ),
  // )

  // ===================================
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 435,
      width: double.infinity,
      decoration: BoxDecoration(
        // color: Colors.purple,
        borderRadius: BorderRadius.only(
            // bottomLeft: Radius.circular(22),
            // bottomRight: Radius.circular(22),
            ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                projectCard(images[0], "Student App", "Student App Applications", 0 ,"https://appetize.io/app/b_upzxphjyzwjwvpzds32geh2zoq", "https://appetize.io/app/b_upzxphjyzwjwvpzds32geh2zoq"),
                projectCard(images[1], "Doctor Appointment Tracker", "Desktop Applications", 1, "https://github.com/Mks30d/Doctor_Appointment_Tracking_System/tree/main/Doctor%20Appointment%20Tracking%20System", "https://github.com/Mks30d/Doctor_Appointment_Tracking_System/tree/main/Doctor%20Appointment%20Tracking%20System"),
                projectCard(images[2], "Covid-19 Tracker", "Student App Applications", 2, "https://github.com/Mks30d/InnomaticsResearchLabs/tree/main/5Assignment_Covid19_ReactAPI", "https://covid19reactapi.netlify.app/",),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                projectCard(images[3], "Weather App", "Student App Applications", 3, "https://github.com/Mks30d/InnomaticsResearchLabs/tree/main/3Assignment%20Weather%20App",  "https://weatherusingapi.netlify.app/",),
                projectCard(images[4], "Wazirx Landing Page", "Student App Applications", 4, "https://github.com/Mks30d/InnomaticsResearchLabs/tree/main/2Assignment_WAZIRX%20Clone", "https://wazirxclone.netlify.app/"),
                projectCard(images[5], "Notes Taking App", "Student App Applications", 5, "https://github.com/Mks30d/InnomaticsResearchLabs/tree/main/7Assignment%20Notes%20App", "https://notesapp06.netlify.app/"),
              ],
            ),

            // projectCard(),
          ],
        ),
      ),
    );
  }
}
