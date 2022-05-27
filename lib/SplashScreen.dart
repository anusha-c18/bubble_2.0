import 'dart:async';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:bubble/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:bubble/styles.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC3FF37),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 200.0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).copyWith().size.height/12,
                  child: const Image(
                      image: AssetImage('assets/bubble-logo.png')
                  ),
              ),

              SizedBox(height: 150.0),

              const Text(
                "Sharing joy one bubble at a time",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Lobster',
                    fontSize: 20.0,
                    color: Color(0xFFFF5757)
                )
              ),
              SizedBox(height: 100.0,),
              JumpingDotsProgressIndicator(
                color: Color(0xFFB343FF),
                numberOfDots: 4,
                dotSpacing: 1.2,
                fontSize: 100.0,
                milliseconds: 150,
              ),
              SizedBox(height: 10.0,),
              Text("Loading, Please Wait",
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

