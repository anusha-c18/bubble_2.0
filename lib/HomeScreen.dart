import 'package:flutter/material.dart';
import 'package:bubble/styles.dart';

import 'ngo-view/ngo-portal.dart';
import 'org-view/org-portal.dart';
import 'ind-view/ind-portal.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BubbleTheme().themeData.backgroundColor,
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 100.0),
          child: Column(
            children: [
              Text("User Views",style: TextStyle(fontFamily: 'Lobster' ,fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.red),),
              SizedBox(height: 50.0,),
              MaterialButton(
                  color: Theme.of(context).primaryColor,
                  child: new Text("NGO View"),
                  splashColor: Colors.redAccent,
                  onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> NGOPortal()))),

              //TODO: choose button type to proceed with
              //Different button type
              // ElevatedButton(
              //     style: ElevatedButton.styleFrom(minimumSize: Size(100.0, 40.0)),
              //     onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> NGOPortal())), child: Text('NGO View')),

              SizedBox(height: 50.0,),
              ElevatedButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> OrgPortal())), child: Text('Organization View')),
              SizedBox(height: 50.0,),
              ElevatedButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> IndividualPortal())), child: Text('Individual View'))
            ],
          ),
        ),),
    );
  }
}
