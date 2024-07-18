import 'package:flutter/material.dart';
import 'package:portfolio/portfolio/landingpage.dart';

// TextStyle textStyle = TextStyle(color: textPrimaryColor, fontSize: 32, fontWeight: FontWeight.w600, fontFamily: "Poppins");
TextStyle mainHeadingStyle = TextStyle(color: textPrimaryColor, fontSize: 23, fontWeight: FontWeight.w800, fontFamily: "Poppins");
TextStyle titleStyle = TextStyle(color: textPrimaryColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: "Poppins");
TextStyle subtitleStyle = TextStyle(color: textSecondaryColor, fontSize: 13, fontFamily: "Poppins");

Widget line(double height) {
  return Container(
    height: height,
    width: 1,
    color: textSecondaryColor,
  );
}

Widget circle() {
  return Container(
    width: 12,
    height: 12,
    decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(1),
            offset: Offset(0, -2),
            blurRadius: 8,
            spreadRadius: 8,
          ),
        ]),
    child: Center(
      child: Container(
        width: 7,
        height: 7,
        decoration: BoxDecoration(
            color: blueColor, borderRadius: BorderRadius.circular(50)),
      ),
    ),
  );
}

class Internship extends StatelessWidget {
  const Internship({super.key});

  // Widget line(double height) {
  //   return Container(
  //     height: height,
  //     width: 1,
  //     color: textSecondaryColor,
  //   );
  // }
  //
  // Widget circle() {
  //   return Container(
  //     width: 12,
  //     height: 12,
  //     decoration: BoxDecoration(
  //         color: secondaryColor,
  //         borderRadius: BorderRadius.circular(50),
  //         boxShadow: [
  //           BoxShadow(
  //             color: primaryColor.withOpacity(1),
  //             offset: Offset(0, -2),
  //             blurRadius: 8,
  //             spreadRadius: 8,
  //           ),
  //         ]),
  //     child: Center(
  //       child: Container(
  //         width: 7,
  //         height: 7,
  //         decoration: BoxDecoration(
  //             color: blueColor, borderRadius: BorderRadius.circular(50)),
  //       ),
  //     ),
  //   );
  // }

  Widget education(String course, String year, String college) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          course,
          style: titleStyle,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4, bottom: 3),
          child: Text(year, style: TextStyle(fontSize: 13, color: blueColor)),
        ),
        Text(college, style: subtitleStyle),
        SizedBox(
          height: 25,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22),
      child: Container(
          height: 435,
          width: double.infinity,
          // color: Colors.red,
    
          child: SingleChildScrollView(
            child: Column(
              children: [
                Skills(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Icon(
                                Icons.menu_book_outlined,
                                color: blueColor,
                              ),
                            ),
                          ),
                        ),
                        line(30),
                        circle(),
                        line(84),
                        circle(),
                      ],
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 11, bottom: 22),
                          child: Text(
                            "Internships",
                            style: mainHeadingStyle,
                          ),
                        ),
                
                        // Container(
                        //   child: Column(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //       Text("Master of Computer Application (M.C.A.)", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: textPrimaryColor),),
                        //       Padding(
                        //         padding: const EdgeInsets.only(top: 3, bottom: 3),
                        //         child: Text("2023-25", style: TextStyle(fontSize: 15, color: textPrimaryColor)),
                        //       ),
                        //       Text("JSS Academy of Technical Education, Noida", style: TextStyle(fontSize: 15, color: textPrimaryColor)),
                        //     ],
                        //   ),
                        // ),
                
                        education(
                            "Full Stack Developer",
                            "Innomatics Research Labs | Feb 2023 - Apr 2023",
                            "Gained expertise in HTML, CSS, JavaScript, Bootstrap, React.js"),
                        education(
                            "Desktop Application Developer",
                            "Precursor Info Solutions Private Limited | Jul 2022 - Aug 2022",
                            "Gained expertise in JavaSE and MySQL"),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class Skills extends StatelessWidget {
  // const Skills({super.key});

  List <String> image = ["Flutter-Dark.png", "Java-Dark.png", "Dart-Dark.png", "C.png", "HTML.png", "CSS.png", "JavaScript.png", "Git.png", "Github-Dark.png", "Idea-Dark.png", "VSCode-Dark.png", "AndroidStudio-Dark.png", ];
  List <String> title = ["Flutter", "Java", "Dart", "C", "HTML", "CSS", "JavaScript", "Git", "GitHub", "IntelliJ", "VSCode", "AndroidStudio", ];

  Widget skills(String image, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 7, top: 5, bottom: 7),
      child: Container(
        // width: 55,
        // height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11)),
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Color(0x000000).withOpacity(1),
                    offset: Offset(12, 13),
                    blurRadius: 18,
                    spreadRadius: -5,
                  )
                ]),
                child: Image.asset("assets/images/logo/${image}", height: 45,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3,bottom: 4),
                child: Text("${title}", style: TextStyle(color: textPrimaryColor),),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Column(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Icon(
                          Icons.menu_book_outlined,
                          color: blueColor,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                width: 13,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 11, bottom: 22),
                child: Text(
                  "Skills",
                  style: mainHeadingStyle,
                ),
              ),
            ],
          ),

          // Container(
          //   width: 55,
          //   height: 55,
          //   decoration: BoxDecoration(
          //       color: blueColor, borderRadius: BorderRadius.circular(11)),
          //   child: Center(
          //     child: Container(
          //       decoration: BoxDecoration(boxShadow: [
          //         BoxShadow(
          //           color: Color(0x000000).withOpacity(1),
          //           offset: Offset(12, 13),
          //           blurRadius: 18,
          //           spreadRadius: -5,
          //         )
          //       ]),
          //       child: Image(
          //         image: AssetImage("assets/images/logo/CSS.png"),
          //         height: 55,
          //       ),
          //     ),
          //   ),
          // ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              skills(image[0], title[0]),
              skills(image[1], title[1]),
              skills(image[2], title[2]),
              skills(image[3], title[3]),
              skills(image[4], title[4]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              skills(image[5], title[5]),
              skills(image[6], title[6]),
              skills(image[7], title[7]),
              skills(image[8], title[8]),
              skills(image[9], title[9]),
              skills(image[10], title[10]),
              skills(image[11], title[11]),
            ],
          ),

          // GridView.builder(
          //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //       maxCrossAxisExtent: 55,crossAxisSpacing: 11,mainAxisSpacing: 11),
          //   shrinkWrap: true,
          //   itemCount: 7,
          //   itemBuilder: (BuildContext context, int index) {
          //     return Container(
          //       width: 55,
          //       height: 55,
          //       decoration: BoxDecoration(
          //           color: blueColor, borderRadius: BorderRadius.circular(11)),
          //       child: Center(
          //         child: Image(
          //           image: AssetImage("assets/images/github.png"),
          //           height: 45,
          //         ),
          //       ),
          //     );
          //   },
          // ),

          // CircleSkills(),
        ],
      ),
    );
  }
}

//================================================
class CircleSkills extends StatelessWidget {
  const CircleSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: ListView.builder(

        itemCount: 12,
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Container(
                width: 55,
                height: 55,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(100)),
                child: Stack(
                  children: [

                    Center(
                      child: Image(
                        image: AssetImage("assets/images/github.png"),
                        height: 45,
                      ),
                    ),

                    Center(
                      child: TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0, end: .8),
                        duration: Duration(milliseconds: 2000),
                        curve: Curves.easeInOut,
                        builder: (context, value, child) {
                          return CircularProgressIndicator(
                            value: value,
                            color: blueColor,
                            backgroundColor: Colors.grey[300],
                            strokeWidth: 3.5,
                            strokeAlign: 5,
                            strokeCap: StrokeCap.round,
                          );
                        },
                      ),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
