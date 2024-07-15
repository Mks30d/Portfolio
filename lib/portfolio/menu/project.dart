import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/portfolio/landingpage.dart';

// TextStyle textStyle = TextStyle(color: textPrimaryColor, fontSize: 32, fontWeight: FontWeight.w600, fontFamily: "Poppins");
TextStyle menuMainHeadingStyle = TextStyle(color: textPrimaryColor, fontSize: 32, fontWeight: FontWeight.w600, fontFamily: "Poppins");
TextStyle menuItemsHeadingStyle = TextStyle(color: textPrimaryColor, fontSize: 32, fontWeight: FontWeight.w600, fontFamily: "Poppins");
TextStyle mainHeadingStyle = TextStyle(color: textPrimaryColor, fontSize: 32, fontWeight: FontWeight.w600, fontFamily: "Poppins");
TextStyle titleStyle = TextStyle(color: textPrimaryColor, fontSize: 15, fontWeight: FontWeight.w700, fontFamily: "Poppins");
TextStyle subtitleStyle = TextStyle(color: textPrimaryColor, fontSize: 15, fontWeight: FontWeight.w300, fontFamily: "Poppins");


class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {

  List<String> images = ["project-1.jpg", "project-2.png", "project-3.jpg", "project-4.png", "project-5.png", "project-6.png", "project-7.png", "project-8.jpg", "project-9.png", ];
  bool isHover = false;
  Widget projectCard(String image) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 122,
          width: 215,
          decoration: BoxDecoration(
              // color: blueColor,
              borderRadius: BorderRadius.circular(11),
              border: Border.all(color: borderColor, width: 1),
              boxShadow: [
                // BoxShadow(
                //   color: Color(0x000000).withOpacity(1),
                //   offset: Offset(12, 13),
                //   blurRadius: 18,
                //   spreadRadius: -5,
                // )
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(11),
            child: Image(
              image: AssetImage("assets/images/projects/${image}"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Student App", style: TextStyle(color: textPrimaryColor, fontSize: 16, fontFamily: "Poppins"),),
              Text("Applications", style: TextStyle(color: textPrimaryColor, fontSize: 14, fontFamily: "PoppinsLight"),),
            ],
          ),
        ),
      ],
    );
  }

  // ===================================

  Widget projectCard1() {
    return GridView.builder(
      itemCount: 5,
      shrinkWrap: true,
      // physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 215, // Adjust this value based on your layout needs
        // childAspectRatio: 1, // Adjust this value based on your layout needs
        crossAxisSpacing: 10, // Adjust this value based on your layout needs
        mainAxisSpacing: 10, // Adjust this value based on your layout needs
      ),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
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
                child: Image(
                  image: AssetImage("assets/images/spiderman.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Student App", style: TextStyle(color: textPrimaryColor, fontSize: 16, fontFamily: "Poppins"),),
                  Text("Applications", style: TextStyle(color: textPrimaryColor, fontSize: 14, fontFamily: "PoppinsLight"),),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

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
                projectCard(images[0]),
                projectCard(images[1]),
                projectCard(images[2]),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                projectCard(images[3]),
                projectCard(images[4]),
                projectCard(images[5]),
              ],
            ),
        
            // projectCard(),
          ],
        ),
      ),
    );
  }
}
