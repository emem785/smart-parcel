import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AvailableItemPage extends StatelessWidget {
  const AvailableItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Itemdfdf'),
              ],
            );
          }),
    );
  }
}
