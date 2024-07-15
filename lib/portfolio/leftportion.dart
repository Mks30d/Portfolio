import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/portfolio/landingpage.dart';
import 'package:portfolio/portfolio/leftportion.dart';
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
TextStyle menuMainHeadingStyle = TextStyle(color: textPrimaryColor, fontSize: 32, fontWeight: FontWeight.w600, fontFamily: "Poppins");
TextStyle menuItemsHeadingStyle = TextStyle(color: textPrimaryColor, fontSize: 32, fontWeight: FontWeight.w600, fontFamily: "Poppins");
TextStyle mainHeadingStyle = TextStyle(color: textPrimaryColor, fontSize: 32, fontWeight: FontWeight.w600, fontFamily: "Poppins");
TextStyle titleStyle = TextStyle(color: textPrimaryColor, fontSize: 15, fontWeight: FontWeight.w700, fontFamily: "Poppins");
TextStyle subtitleStyle = TextStyle(color: textPrimaryColor, fontSize: 15, fontWeight: FontWeight.w300, fontFamily: "Poppins");


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
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x000000).withOpacity(1),
                    offset: Offset(0, 0),
                    blurRadius: 14,
                    spreadRadius: 2,
                  )
                ]
              ),
              // child: CircleAvatar(
              //   // child: Image.asset("assets/images/mks.jpeg"),
              // ),
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
                // Text(
                //   "SHARMA",
                //   style: TextStyle(
                //       color: textPrimaryColor,
                //       fontSize: 20,
                //       fontWeight: FontWeight.bold),
                // ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          launchUrl(
                              Uri.parse("https://www.linkedin.com/in/mks30d"),
                              mode: LaunchMode.externalApplication);
                        },
                        child: Image(
                          image: AssetImage("assets/images/linkedin.png"),
                          height: 25,
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        launchUrl(Uri.parse("https://github.com/Mks30d"),
                            mode: LaunchMode.externalApplication);
                      },
                      child: Image(
                        image: AssetImage("assets/images/github.png"),
                        height: 25,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        launchUrl(
                          Uri.parse("https://leetcode.com/u/Mks30d/"),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      child: Image(
                        image: AssetImage("assets/images/leetcode.png"),
                        height: 25,
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          launchUrl(
                              Uri.parse("https://www.linkedin.com/in/mks30d"),
                              mode: LaunchMode.externalApplication);
                        },
                        child: Image(
                          image: AssetImage("assets/images/logo/linkedin4.png"),
                          height: 25,
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        launchUrl(Uri.parse("https://github.com/Mks30d"),
                            mode: LaunchMode.externalApplication);
                      },
                      child: Image(
                        image: AssetImage("assets/images/logo/github1.png"),
                        height: 25,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        launchUrl(
                          Uri.parse("https://leetcode.com/u/Mks30d/"),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      child: Image(
                        image: AssetImage("assets/images/logo/leetcode.png"),
                        height: 25,
                      ),
                    ),
                  ],
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
              onTap: (){
                launchUrl(
                    Uri(scheme: "mailto", path: "manish30d@gmail.com"),
                    mode: LaunchMode.externalApplication
                );
              },
              child: CustomContainer(
                title: "Email",
                subtitle: "manish30d@gmail.com",
                icon: Icon(
                  Icons.email_outlined,
                  color: blueColor,
                ),
              ),
            ),

            InkWell(
              onTap: (){
                launchUrl(
                    Uri(scheme: "tel", path: "7897739391"),
                    mode: LaunchMode.externalApplication
                );
              },
              child: CustomContainer(
                title: "Phone",
                subtitle: "+91 7897739391",
                icon: Icon(
                  Icons.phone,
                  color: blueColor,
                ),
              ),
            ),

            CustomContainer(
              title: "Birthday",
              subtitle: "30 Dec, 2000",
              icon: Icon(
                Icons.calendar_month,
                color: blueColor,
              ),
            ),
            CustomContainer(
              title: "Location",
              subtitle: "Noida, India",
              icon: Icon(
                Icons.location_on_outlined,
                color: blueColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//=====================================================
class CustomContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon? icon;
  final Function? function;

  CustomContainer({
    this.title = "Title",
    this.subtitle = "Subtitle",
    this.icon,
    this.function,
  });

  static void defaultFunction() {
    launchUrl(
        Uri.parse("https://google.com/"),
        mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 11, left: 22),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(11)
              ),
              child: icon,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(color: textSecondaryColor, fontSize: 12),
              ),
              Text(
                subtitle,
                style: TextStyle(color: textPrimaryColor),
              )
            ],
          )
        ],
      ),
    );
  }
}
