import 'package:flutter/material.dart';
import 'package:bubble/styles.dart';

class NGOProfile extends StatefulWidget {
  const NGOProfile({Key? key}) : super(key: key);

  @override
  State<NGOProfile> createState() => _NGOProfileState();
}

class _NGOProfileState extends State<NGOProfile> {
  @override
  Widget build(BuildContext context) {
    return Center(
          child: Text("NGO Profile"),
        );
  }
}
