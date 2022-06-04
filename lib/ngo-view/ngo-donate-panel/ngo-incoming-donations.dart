import 'package:flutter/material.dart';
class IncomingList extends StatefulWidget {
  const IncomingList({Key? key}) : super(key: key);

  @override
  State<IncomingList> createState() => _IncomingListState();
}

class _IncomingListState extends State<IncomingList> {
  // List<Donation> donations = [
  //   const Donation(
  //     name: 'D1',
  //     qty: 5
  //   )
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(itemCount:5, itemBuilder: (context, index) => Card(
        child: ListTile(
          title: Text('Username $index'),
          subtitle: Text('Donation $index'),
          trailing: const Icon(Icons.arrow_forward),
        ),
      )),
    );
  }
}

class Donation{
  final String name;
  final int qty;


  Donation(this.name, this.qty);
}