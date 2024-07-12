import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/portfolio/landingpage.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  TextStyle textStyle = TextStyle(
      fontSize: 15, fontWeight: FontWeight.w300, color: textPrimaryColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
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
                style: textStyle,
              ),
              const SizedBox(
                height: 30,
              ),
              // Text("My job is to build your website so that it is functional and user-friendly but at the same time attractive. Moreover, I add personal touch to your product and make sure that is eye-catching and easy to use. My aim is to bring across your message and identity in the most creative way. I created web design for many famous brand companies.", style: textStyle,),

              Text(
                "What I'm Doing",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: textPrimaryColor,
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Content(title: "Flutter",),
                  Content(title: "Java",),
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Content(icon: Icon(Icons.phone_android_sharp, color: textPrimaryColor,),title: "Mobile Apps", subtitle: "Professional development of applications for iOS and Android.",),
                  Content(title: "DSA",),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  // const Content({super.key});

  final String title;
  final String subtitle;
  final Icon? icon;

  Content({
    this.title = "Web Design",
    this.subtitle = "The most modern and high-quality design made at a professional level.",
    this.icon,
});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
        fontSize: 15, color: textPrimaryColor
    );

    return Container(
      decoration: BoxDecoration(
          color: blueColor,
          borderRadius: BorderRadius.circular(11),
        boxShadow: [
          BoxShadow(
            color: Color(0x000000).withOpacity(1),
            offset: Offset(12, 13),
            blurRadius: 18,
            spreadRadius: -5,
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
              padding: EdgeInsets.only(left: 18, right: 18),
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(11)
                ),
                child: Center(
                  child: FlutterLogo(size: 30,) ,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: textPrimaryColor),
                    ),
                    Container(
                        child: Text(
                      subtitle,
                      style: textStyle,
                    )),
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
