import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.only(
          // bottomLeft: Radius.circular(22),
          // bottomRight: Radius.circular(22),
        ),
      ),
      child: Text("Project"),
    );
  }
}
