import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SelectLocationPage extends StatelessWidget {
  final Function(int) onSelected;

  const SelectLocationPage({
    Key? key,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Select preferred location to book a box.'),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: InkWell(
                onTap: () {
                  onSelected(index);
                  context.router.pop();
                },
                child: Text("location $index"),
              ),
            ),
          ),
        )
      ],
    );
  }
}
