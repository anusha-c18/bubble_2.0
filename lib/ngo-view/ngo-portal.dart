import 'package:flutter/material.dart';
import 'package:bubble/styles.dart';

import 'ngo-events.dart';
import 'ngo-donations.dart';
import 'ngo-profile.dart';


class NGOPortal extends StatefulWidget {
  const NGOPortal({Key? key}) : super(key: key);

  @override
  State<NGOPortal> createState() => _NGOPortalState();
}

class _NGOPortalState extends State<NGOPortal> {
  int index = 0;
  final titles = ["My Events","My Donations","My Profile"];
  final screens = [
    NGOEvents(),
    NGODonations(),
    NGOProfile()
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
