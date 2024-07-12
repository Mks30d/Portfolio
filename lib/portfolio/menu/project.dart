import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/portfolio/landingpage.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {

  Widget projects() {
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
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      width: double.infinity,
      decoration: BoxDecoration(
        // color: Colors.purple,
        borderRadius: BorderRadius.only(
            // bottomLeft: Radius.circular(22),
            // bottomRight: Radius.circular(22),
            ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              projects(),
              projects(),
              projects(),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              projects(),
              projects(),
              projects(),
            ],
          ),
        ],
      ),
    );
  }
}
