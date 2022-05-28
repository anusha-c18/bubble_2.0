import 'package:flutter/material.dart';
import 'package:bubble/styles.dart';

//import 'ngo-events.dart';
import 'org-donations.dart';
import 'org-profile.dart';


class OrgPortal extends StatefulWidget {
  const OrgPortal({Key? key}) : super(key: key);

  @override
  State<OrgPortal> createState() => _OrgPortalState();
}

class _OrgPortalState extends State<OrgPortal> {
  int index = 0;
  final titles = ["Org Donations","Org Profile"];
  final screens = [
    OrgDonations(),
    OrgProfile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BubbleTheme().themeData.backgroundColor,
        title: Text(titles[index]),
        //automaticallyImplyLeading: false, // to disable the back button on the appbar
      ),
      body: screens[index],

      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index)=>setState(()=>this.index = index),
        destinations: [
          NavigationDestination(icon: Icon(Icons.volunteer_activism_outlined), label: 'Donations', selectedIcon: Icon(Icons.volunteer_activism),),
          NavigationDestination(icon: Icon(Icons.person_outline), label: 'Profile', selectedIcon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
