import 'package:flutter/material.dart';
import 'package:bubble/styles.dart';

class IndDonations extends StatefulWidget {
  const IndDonations({Key? key}) : super(key: key);

  @override
  State<IndDonations> createState() => _IndDonationState();
}

class _IndDonationState extends State<IndDonations> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("My Individual Donations"),
    );
  }
}
