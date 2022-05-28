import 'package:flutter/material.dart';
import 'package:bubble/styles.dart';

class IndProfile extends StatefulWidget {
  const IndProfile({Key? key}) : super(key: key);

  @override
  State<IndProfile> createState() => _IndProfileState();
}

class _IndProfileState extends State<IndProfile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("My Profile"),
    );
  }
}
