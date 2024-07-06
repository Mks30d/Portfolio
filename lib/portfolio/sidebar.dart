import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {

  Color textColor = Color(0xfffafafa);
  Color textColor1 = Color(0xfff8f8f8);
  Color primaryColor = Color(0xff1e1e1f);
  Color secondaryColor = Color(0xff363637);
  Color blueColor = Colors.blueAccent;
  Color bgColor = Color(0xff121212);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
        color: widget.blueColor,
        // color: Color(0xfffafafa),
        // color: Color(0xff1e1e1f),
        // color: Color(0xff363637),
      child: Column(
        children: [
          Text("Dfdf"),
          Text("Dfdf"),
          Text("Dfdf"),
          Text("Dfdf"),
        ],
      ),
    );
  }
}
