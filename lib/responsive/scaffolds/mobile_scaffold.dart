import 'package:flutter/material.dart';
import 'package:responsive_dash/theme/theme.dart';
import 'package:responsive_dash/widgets/appbar.dart';
import 'package:responsive_dash/widgets/box.dart';
import 'package:responsive_dash/widgets/drawer.dart';
import 'package:responsive_dash/widgets/gridview.dart';
import 'package:responsive_dash/widgets/tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: myAppBar,
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AspectRatio(
              aspectRatio: 1,
              child: SizedBox(
                width: double.infinity,
                child: MyGridView(
                  itemBuilderWidget: MyBox(),
                  itemCount: 4,
                  crossAxisCount: 2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const MyTile();
                },
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
