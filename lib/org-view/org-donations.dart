import 'package:flutter/material.dart';
import 'package:bubble/styles.dart';

class OrgDonations extends StatefulWidget {
  const OrgDonations({Key? key}) : super(key: key);

  @override
  State<OrgDonations> createState() => _OrgDonationState();
}

class _OrgDonationState extends State<OrgDonations> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Organizational Donations"),
    );
  }
}
