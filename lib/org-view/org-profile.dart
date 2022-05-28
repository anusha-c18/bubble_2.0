import 'package:flutter/material.dart';
import 'package:bubble/styles.dart';

class OrgProfile extends StatefulWidget {
  const OrgProfile({Key? key}) : super(key: key);

  @override
  State<OrgProfile> createState() => _OrgProfileState();
}

class _OrgProfileState extends State<OrgProfile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("ORG Profile"),
    );
  }
}
