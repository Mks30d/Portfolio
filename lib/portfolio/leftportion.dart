import 'package:flutter/material.dart';

class LeftPortion extends StatefulWidget {
  Color textColor = Color(0xfffafafa);
  Color primaryColor = Color(0xff1e1e1f);
  Color secondaryColor = Color(0xff363637);
  Color blueColor = Colors.blueAccent;
  Color bgColor = Color(0xff121212);
  Color borderColor = Color(0xff444444);
  @override
  State<LeftPortion> createState() => _LeftPortionState();
}

class _LeftPortionState extends State<LeftPortion> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 80, right: 11, top: 50, bottom: 50),
      child: Container(
        width: 100,
        decoration: BoxDecoration(
            color: widget.secondaryColor,
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: widget.borderColor)
        ),
        child: Column(
          children: [
            Text("Dfdf", style: TextStyle(color: widget.textColor),),
          ],
        ),
      ),
    );
  }
}
