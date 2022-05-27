import 'package:flutter/material.dart';
import 'package:bubble/styles.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BubbleTheme().themeData.backgroundColor,
        title: Text("Home Screen"),
      ),
      body: Center(child: Text("Reached Main Sign In Page",style: TextStyle(fontFamily: 'Lobster' ,fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.red),),),
    );
  }
}
