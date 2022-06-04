import 'package:flutter/material.dart';
import 'package:bubble/styles.dart';
import 'ngo-donate-panel/ngo-incoming-donations.dart';
import 'ngo-donate-panel/ngo-tbd-donations.dart';
import 'ngo-donate-panel/ngo-recieved-donations.dart';

class NGODonations extends StatefulWidget {
  const NGODonations({Key? key}) : super(key: key);

  @override
  State<NGODonations> createState() => _NGODonationState();
}

class _NGODonationState extends State<NGODonations> {
  @override
  Widget build(BuildContext context)  {
    return DefaultTabController(

      length: 3,
      child: Column(
        children: [

          Text("NGO Donations"),
          SizedBox(height: 50.0),
          Container(
            decoration: BoxDecoration(
                color: bubbleGreen,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: TabBar(
                indicator: BoxDecoration(
                    color: bubbleRed,
                    borderRadius: BorderRadius.circular(8)),
                  tabs: [
                    Tab(text: 'Requests',),
                    Tab(text: 'To Recieve',),
                    Tab(text: 'Recieved',)
                  ],
              ),
            ),
          ),
          Expanded(
              child: TabBarView(
                  children: [
                    //Container(height: 100,child: Text('Incoming'),),
                    IncomingList(),
                    Container(height: 100,child: Text('Ongoing'),),
                    Container(height: 100,child: Text('Done'),),
                  ]))
        ],
      ),


    );
  }
}
