import 'package:flutter/material.dart';
import 'package:bubble/styles.dart';

class NGODonations extends StatefulWidget {
  const NGODonations({Key? key}) : super(key: key);

  @override
  State<NGODonations> createState() => _NGODonationState();
}

class _NGODonationState extends State<NGODonations> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("NGO Donations"),
    );
  }
}
