import 'package:flutter/material.dart';

class Resume extends StatefulWidget {
  const Resume({super.key});

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
          // bottomLeft: Radius.circular(22),
          // bottomRight: Radius.circular(22),
        ),
      ),
      child: Text("Resume"),
    );  }
}
