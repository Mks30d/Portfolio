import 'package:flutter/material.dart';

class RightPortion extends StatefulWidget {
  Color textColor = Color(0xfffafafa);
  Color textColor1 = Color(0xfff8f8f8);
  Color primaryColor = Color(0xff1e1e1f);
  Color secondaryColor = Color(0xff363637);
  Color blueColor = Colors.blueAccent;
  Color bgColor = Color(0xff121212);
  Color borderColor = Color(0xff444444);
  @override
  State<RightPortion> createState() => _RightPortionState();
}

class _RightPortionState extends State<RightPortion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
            right: 80, left: 11, top: 50, bottom: 50),
        child: Container(
          width: 100,
          decoration: BoxDecoration(
              color: widget.secondaryColor,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: widget.borderColor)
          ),
        ),
      ),
    );
  }
}
