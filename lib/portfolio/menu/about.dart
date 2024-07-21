import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/portfolio/landingpage.dart';

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
        padding: const EdgeInsets.only(left: 22, right: 22, bottom: 22),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "I'm Creative Director and UI/UX Designer from Sydney, Australia, working in web development and print media. I enjoy turning complex problems into simple, beautiful and intuitive designs.",
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
                  DoingDetails(title: "Flutter",image: Image.asset("assets/images/logo/Flutter-Dark.png")),
                  DoingDetails(title: "Java",image: Image.asset("assets/images/logo/Java-Dark.png")),
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DoingDetails(image: Image.asset("assets/images/logo/AndroidStudio-Dark.png") ,title: "Mobile Apps", subtitle: "Professional development of applications for iOS and Android.",),
                  DoingDetails(title: "DSA",image: Image.asset("assets/images/logo/Java-Dark.png")),
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
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 330,
          maxWidth: 360,
          minHeight: 100,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 18, right: 15),
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(11)
                ),
                child: Center(
                  // child: icon != null? icon: Icon(Icons.account_box),
                  child: image != null ? image:Image.asset("assets/images/logo/Flutter-Dark.png"),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 20, right: 15),
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
