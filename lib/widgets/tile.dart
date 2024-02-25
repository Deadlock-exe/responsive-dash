import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  const MyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[500],
      height: 60,
      margin: const EdgeInsets.all(10),
    );
  }
}
