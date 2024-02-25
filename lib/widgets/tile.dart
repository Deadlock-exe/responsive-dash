import 'package:flutter/material.dart';
import 'package:responsive_dash/theme/theme.dart';

class MyTile extends StatelessWidget {
  const MyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      height: 60,
      margin: const EdgeInsets.all(10),
    );
  }
}
