import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color textPrimaryColor = Color(0xffe7e7e7);
Color textSecondaryColor = Color(0xff8e8e8f);
Color primaryColor = Color(0xff1e1e1f);
Color secondaryColor = Color(0xff373737);
// Color blueColor = Colors.blue.shade700;
Color blueColor = Color(0xff0254cf);
Color bgColor = Color(0xff111111);
Color borderColor = Color(0xff444444);

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
      padding: const EdgeInsets.only(left: 80, right: 11, top: 50, bottom: 50),
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
              width: 50,
              height: 50,
              color: secondaryColor,
              child: CircleAvatar(
                child: Image(image: AssetImage("assets/images/mks.jpg"),),
              ),
            ),
            Column(
              children: [
                Text(
                  "MANISH KUMAR",
                  style: TextStyle(
                      color: textPrimaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "SHARMA",
                  style: TextStyle(
                      color: textPrimaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),

            Divider(
              // height: 2,
              thickness: 1,
              indent: 15,
              endIndent: 15,
              color: secondaryColor,
            ),

            CustomContainer(
              title: "Email",
              subtitle: "manish30d@gmail.com",
              icon: Icon(
                Icons.email_outlined,
                color: blueColor,
              ),
            ),
            CustomContainer(
              title: "Phone",
              subtitle: "+91 7897739391",
              icon: Icon(
                Icons.phone,
                color: blueColor,
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

  const CustomContainer({
    this.title = "Title",
    this.subtitle = "Subtitle",
    this.icon,
    this.function,
  });

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
                  borderRadius: BorderRadius.circular(11)),
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
