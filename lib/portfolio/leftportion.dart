import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Mks/portfolio/landingpage.dart';
import 'package:url_launcher/url_launcher.dart';

// Color textPrimaryColor = Color(0xffe7e7e7);
// Color textSecondaryColor = Color(0xff8e8e8f);
// Color primaryColor = Color(0xff1e1e1f);
// Color secondaryColor = Color(0xff373737);
// // Color blueColor = Colors.blue.shade700;
// Color blueColor = Color(0xff0254cf);
// Color bgColor = Color(0xff111111);
// Color borderColor = Color(0xff444444);

// TextStyle textStyle = TextStyle(color: textPrimaryColor, fontSize: 32, fontWeight: FontWeight.w600, fontFamily: "Poppins");

TextStyle mainHeadingStyle = TextStyle(
    color: textPrimaryColor,
    fontSize: 32,
    fontWeight: FontWeight.w600,
    fontFamily: "Poppins");
TextStyle titleStyle = TextStyle(
    color: textPrimaryColor,
    fontSize: 15,
    fontWeight: FontWeight.w700,
    fontFamily: "Poppins");
TextStyle subtitleStyle = TextStyle(
    color: textPrimaryColor,
    fontSize: 15,
    fontWeight: FontWeight.w300,
    fontFamily: "Poppins");

class LeftPortion extends StatefulWidget {
  // Color textColor = Color(0xfffafafa);
  // Color textPrimaryColor = Color(0xffe7e7e7);
  // Color textSecondaryColor = Color(0xff8e8e8f);
  // Color primaryColor = Color(0xff1e1e1f);
  // Color secondaryColor = Color(0xff373737);
  // Color blueColor = Colors.blueAccent;
  // Color bgColor = Color(0xff111111);
  // Color borderColor = Color(0xff444444);
  @override
  State<LeftPortion> createState() => _LeftPortionState();
}

class _LeftPortionState extends State<LeftPortion> {

  bool isHovering = false;

  Widget socialmedia(String link, String image) {
    return InkWell(
        onTap: () {
          launchUrl(
              Uri.parse(link),
              mode: LaunchMode.externalApplication
          );
        },
        child: Image(
          image: AssetImage("assets/images/$image"),
          height: 25,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 80, right: 11, top: 30, bottom: 30),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: borderColor)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x8B000000).withOpacity(1),
                      offset: Offset(6, 7),
                      blurRadius: 11,
                      spreadRadius: 2,
                    )
                  ]),
              child: Transform.scale(
                scale: 1.0,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    // child: Image.asset("assets/images/Mks1.jpg",)
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  "Manish Kumar Sharma",
                  style: TextStyle(
                      color: textPrimaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "App Developer",
                  style: TextStyle(
                      color: textPrimaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialmedia("https://www.linkedin.com/in/mks30d", "linkedin.png"),
                    SizedBox(width: 6,),
                    socialmedia("https://github.com/Mks30d", "github.png"),
                    SizedBox(width: 6,),
                    socialmedia("https://leetcode.com/u/Mks30d/", "leetcode.png"),

                    // InkWell(
                    //     onTap: () {
                    //       launchUrl(
                    //           Uri.parse("https://www.linkedin.com/in/mks30d"),
                    //           mode: LaunchMode.externalApplication);
                    //     },
                    //     child: Image(
                    //       image: AssetImage("assets/images/linkedin.png"),
                    //       height: 25,
                    //     )),

                  ],
                ),

                SizedBox(height: 12,),

                InkWell(
                  onTap: () {
                    launchUrl(
                        Uri.parse("https://drive.google.com/file/d/1Rw4RxO29GeF8gmwJtImdjkRg4AKPKI6j/view?usp=drive_link"),
                        mode: LaunchMode.externalApplication
                    );
                  },

                  onHover: (value) {
                    setState(() {
                      isHovering = value;
                    });
                  },
                  child: Container(
                    width: 90,
                    height: 28,
                    decoration: BoxDecoration(
                      color: isHovering ? blueColor : Color(0xff0148b4),
                      // color:blueColor,
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x000000).withOpacity(1),
                          // offset: Offset(5, 5),
                          // blurRadius: 7,
                          // spreadRadius: 2,

                          offset: Offset(isHovering
                              ? 5
                              : 2, isHovering ? 5 : 2),
                          blurRadius: 5,
                          spreadRadius: 1,

                        )
                      ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(Icons.download_sharp, color: textPrimaryColor, size: 18,),
                        Image.asset("assets/images/icons/download(1).png", height: 12,),
                        SizedBox(width: 5,),
                        Text("Resume", style: TextStyle(color: textPrimaryColor),)
                      ],
                    ),
                  ),
                )
              ],
            ),

            Divider(
              // height: 2,
              thickness: 1,
              indent: 15,
              endIndent: 15,
              color: secondaryColor,
            ),

            InkWell(
              onTap: () {
                launchUrl(Uri(scheme: "mailto", path: "manish30d@gmail.com"),
                    mode: LaunchMode.externalApplication);
              },
              child: CustomContainer(
                title: "Email",
                subtitle: "manish30d@gmail.com",
                index: 0,
                icon: Icon(
                  Icons.email_outlined,
                  color: Colors.black,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                launchUrl(Uri(scheme: "tel", path: "7897739391"),
                    mode: LaunchMode.externalApplication);
              },
              child: CustomContainer(
                title: "Phone",
                subtitle: "+91 7897739391",
                index: 1,
                icon: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
              ),
            ),
            CustomContainer(
              title: "Birthday",
              subtitle: "30 Dec, 2000",
              index: 2,
              icon: Icon(
                Icons.calendar_month,
                color: Colors.black,
              ),
            ),
            CustomContainer(
              title: "Location",
              subtitle: "Noida, India",
              index: 3,
              icon: Icon(
                Icons.location_on_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//=====================================================
class CustomContainer extends StatefulWidget {
  final String title;
  final String subtitle;
  final Icon? icon;
  final Function? function;
  final int? index;

  CustomContainer({
    this.title = "Title",
    this.subtitle = "Subtitle",
    this.icon,
    this.function,
    this.index,
  });

  static void defaultFunction() {
    launchUrl(Uri.parse("https://google.com/"),
        mode: LaunchMode.externalApplication);
  }

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 220,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color(0x000000).withOpacity(isHovering? 1 : 0),
            offset: Offset(isHovering? 5
                : 5, isHovering? 5 : 5),
            blurRadius: 5,
            spreadRadius: 1,
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 11, left: 11),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  color: isHovering ? Color(0xff0d5ed7) : blueColor,
                  borderRadius: BorderRadius.circular(11)),
              child: widget.icon,
            ),
            Container(
              // color: Colors.blueAccent,
              width: 158,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(color: textSecondaryColor, fontSize: 12),
                  ),
                  Text(
                    widget.subtitle,
                    style: TextStyle(color: textPrimaryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
