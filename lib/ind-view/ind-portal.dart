import 'package:flutter/material.dart';
import 'package:bubble/styles.dart';

import 'ind-events.dart';
import 'ind-donations.dart';
import 'ind-profile.dart';


class IndividualPortal extends StatefulWidget {
  const IndividualPortal({Key? key}) : super(key: key);

  @override
  State<IndividualPortal> createState() => _IndividualPortalState();
}

class _IndividualPortalState extends State<IndividualPortal> {
  int index = 0;
  final titles = ["Events","Donations","My Profile"];
  final screens = [
    IndEvents(),
    IndDonations(),
    IndProfile()
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
          NavigationDestination(icon: Icon(Icons.event_outlined), label: 'Events', selectedIcon: Icon(Icons.event)),
          NavigationDestination(icon: Icon(Icons.volunteer_activism_outlined), label: 'Donations', selectedIcon: Icon(Icons.volunteer_activism),),
          NavigationDestination(icon: Icon(Icons.person_outline), label: 'Profile', selectedIcon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
