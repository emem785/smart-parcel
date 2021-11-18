import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AvailablePage extends StatelessWidget {
  const AvailablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //     itemCount: 5,
    //     itemBuilder: (_, index) {
    //       return OpenContainer(
    //           closedElevation: 0.0,
    //           openElevation: 0.0,
    //           closedBuilder: (_, action) {
    //             return ListTile(
    //               onTap: action,
    //               leading: const CircleAvatar(
    //                 child: Text(
    //                   'Accruing\nCharges',
    //                   style: TextStyle(
    //                     color: Color(0xFFF29E25),
    //                     fontSize: 11,
    //                   ),
    //                 ),
    //                 backgroundColor: Color(0x32F29E25),
    //                 radius: 30,
    //               ),
    //               title: Text('Joseph Jones'),
    //               subtitle: Text(
    //                 'Box 4032, Palms Shopping Mall, Lekki',
    //                 style: TextStyle(overflow: TextOverflow.ellipsis),
    //               ),
    //               trailing: CircleAvatar(
    //                 child: Text(
    //                   '20\nOct',
    //                   textAlign: TextAlign.center,
    //                   style: TextStyle(
    //                     color: Colors.white,
    //                     fontSize: 11,
    //                   ),
    //                 ),
    //                 backgroundColor: Colors.grey,
    //                 radius: 25,
    //               ),
    //             );
    //           },
    //           openBuilder: (_, action) => const AvailableItemPage());
    //     });
    return Text("deposits");
  }
}
