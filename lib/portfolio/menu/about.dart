import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Mks/portfolio/landingpage.dart';

// TextStyle textStyle = TextStyle(color: textPrimaryColor, fontSize: 32, fontWeight: FontWeight.w600, fontFamily: "Poppins");
TextStyle mainHeadingStyle = TextStyle(color: textPrimaryColor, fontSize: 24, fontWeight: FontWeight.w800, fontFamily: "Poppins");
TextStyle titleStyle = TextStyle(color: textPrimaryColor, fontSize: 18, fontWeight: FontWeight.w700, fontFamily: "Poppins");
TextStyle subtitleStyle = TextStyle(color: textPrimaryColor, fontSize: 13, fontFamily: "Poppins");


class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  // TextStyle textStyle = TextStyle(
  //     fontSize: 15, fontWeight: FontWeight.w300, color: textPrimaryColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 435,
      width: double.infinity,
      decoration: const BoxDecoration(
        // color: Colors.blue,
        borderRadius: BorderRadius.only(
            // bottomLeft: Radius.circular(22),
            // bottomRight: Radius.circular(22),
            ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 22, right: 25, bottom: 22),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "I'm Manish Kumar Sharma, a Mobile App Developer from Noida, India. I’m currently enhancing my skills in Java, Flutter, and DSA, and working on a Student Management App with a modern UI. My portfolio includes projects like a Doctor Appointment Tracker, Weather Web App, Note Taking Web App, and Covid-19 Tracker App.",
                style: subtitleStyle,
              ),
              const SizedBox(
                height: 30,
              ),
              // Text("My job is to build your website so that it is functional and user-friendly but at the same time attractive. Moreover, I add personal touch to your product and make sure that is eye-catching and easy to use. My aim is to bring across your message and identity in the most creative way. I created web design for many famous brand companies.", style: textStyle,),

              Text(
                "What I'm Doing",
                // style: TextStyle(
                //   fontSize: 20,
                //   fontWeight: FontWeight.w700,
                //   color: textPrimaryColor,
                // ),
                style: mainHeadingStyle,
              ),
              const SizedBox(
                height: 15,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // DoingDetails(title: "Flutter",image: Image.asset("assets/images/logos/Flutter-Dark.png")),
                  DoingDetails(title: "Flutter",subtitle: "I am mastering Flutter, focusing on dynamic and modern mobile app interfaces.", image: Image.asset("assets/images/logos/flutter.png", width: 35, ), ),
                  // DoingDetails(title: "Java",image: Image.asset("assets/images/logos/Java-Dark.png")),
                  DoingDetails(title: "Java",subtitle: "I am advancing my Java skills, enhancing backend systems and application functionality.", image: Image.asset("assets/images/logos/java.png", width: 45,)),
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // DoingDetails(image: Image.asset("assets/images/logos/AndroidStudio-Dark.png") ,title: "Mobile Apps", subtitle: "Professional development of applications for iOS and Android.",),
                  // DoingDetails(image: Image.asset("assets/images/logos/AndroidStudio.png", width: 45,) ,title: "Mobile Apps", subtitle: "Professional development of applications for iOS and Android.",),
                  DoingDetails(title: "Mobile Apps", subtitle: "Creating user-friendly mobile apps, currently developing a Student Management App.", image: Image.asset("assets/images/icons/mobile-development(1).png", width: 40,) ,),
                  DoingDetails(title: "DSA",subtitle: "I am improving my problem-solving skills by deepening my knowledge of data structures and algorithms.", image: Image.asset("assets/images/logos/dsa(3).png", width: 35,)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DoingDetails extends StatelessWidget {
  // const DoingDetails({super.key});

  final String title;
  final String subtitle;
  final Icon? icon;
  final Image? image;

  DoingDetails({
    this.title = "Web Design",
    this.subtitle = "The most modern and high-quality design made at a professional level.",
    this.icon,
    this.image,
});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
        fontSize: 15, color: textPrimaryColor
    );

    return Container(
      decoration: BoxDecoration(
          // color: primaryColor,
          gradient: LinearGradient(colors: [
              Color(0xff222223),
            primaryColor,
          ]),
          borderRadius: BorderRadius.circular(11),
        // border: Border.all(color: borderColor),
        boxShadow: [
          BoxShadow(
            color: Color(0x8B000000).withOpacity(1),
            offset: Offset(6, 7),
            blurRadius: 17,
            spreadRadius: -1,
          )
        ]
      ),
      child: Container(
          width: 350,
          // height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  // color: primaryColor,
                  borderRadius: BorderRadius.circular(11)
                ),
                child: Center(
                  // child: icon != null? icon: Icon(Icons.account_box),
                  child: image != null ? image : Image.asset("assets/images/logos/Flutter-Dark.png"),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15, right: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      // style: TextStyle(
                      //     fontSize: 18,
                      //     fontWeight: FontWeight.w700,
                      //     color: textPrimaryColor
                      // ),
                      style: titleStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text(
                        subtitle,
                        style: subtitleStyle,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
