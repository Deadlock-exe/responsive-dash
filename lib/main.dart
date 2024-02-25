import 'package:flutter/material.dart';
import 'package:responsive_dash/responsive/desktop_scaffold.dart';
import 'package:responsive_dash/responsive/mobile_scaffold.dart';
import 'package:responsive_dash/responsive/responsive_layout.dart';
import 'package:responsive_dash/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
