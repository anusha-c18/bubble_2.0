import 'package:flutter/material.dart';
import 'package:bubble/styles.dart';

class NGOEvents extends StatefulWidget {
  const NGOEvents({Key? key}) : super(key: key);

  @override
  State<NGOEvents> createState() => _NGOEventState();
}

class _NGOEventState extends State<NGOEvents> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("NGO Events"),
    );
  }
}
