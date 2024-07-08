import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/portfolio/menu/about.dart';
import 'package:portfolio/portfolio/menu/resume.dart';

Color textPrimaryColor = Color(0xffe7e7e7);
Color textSecondaryColor = Color(0xff8e8e8f);
Color primaryColor = Color(0xff1e1e1f);
Color secondaryColor = Color(0xff373737);
// Color blueColor = Colors.blue.shade700;
Color blueColor = Color(0xff0254cf);
Color bgColor = Color(0xff111111);
Color borderColor = Color(0xff444444);

class RightPortion extends StatefulWidget {
  @override
  State<RightPortion> createState() => _RightPortionState();
}

class _RightPortionState extends State<RightPortion> {
  TextStyle textStyle =
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black);
  var calledSection = About();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 80, left: 11, top: 50, bottom: 50),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: Container(
          width: 100,
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
                  height: 60,
                  width: 600,
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

                          });
                        },
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              // calledSection = Resume(),
                            });
                          },
                          child: Text(
                            "ABOUT",
                            style: textStyle,
                          ),
                        ),
                      ),
                      Text(
                        "RESUME",
                        style: textStyle,
                      ),
                      Text(
                        "PROJECTS",
                        style: textStyle,
                      ),
                      Text(
                        "CONTACT",
                        style: textStyle,
                      ),
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
                        "About me",
                        style: TextStyle(
                          fontSize: 30,
                          color: textPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 3,
                        width: 130,
                        decoration: BoxDecoration(
                            color: textPrimaryColor,
                            borderRadius: BorderRadius.circular(15)),
                      )
                    ],
                  )),
        
              // ==================================================
              Positioned(
                  bottom: 0, left: 0, right: 0,
                  child: calledSection
              )
            ],
          ),
        ),
      ),
    );
  }
}
