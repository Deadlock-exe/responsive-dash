import 'package:flutter/material.dart';
import 'package:responsive_dash/theme/theme.dart';

class MyBox extends StatelessWidget {
  const MyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      margin: const EdgeInsets.all(10),
    );
  }
}
