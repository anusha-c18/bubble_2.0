import 'package:flutter/material.dart';
import 'package:bubble/styles.dart';

class IndEvents extends StatefulWidget {
  const IndEvents({Key? key}) : super(key: key);

  @override
  State<IndEvents> createState() => _IndEventState();
}

class _IndEventState extends State<IndEvents> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Events I can attend"),
    );
  }
}
