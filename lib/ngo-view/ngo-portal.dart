import 'package:flutter/material.dart';
import 'package:bubble/styles.dart';
class NGOPortal extends StatelessWidget {
  const NGOPortal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BubbleTheme().themeData.backgroundColor,
        title: Text("Home Screen"),
    ),
      body: Center(
        child: Text("NGO View"),
      ),
    );
  }
}
