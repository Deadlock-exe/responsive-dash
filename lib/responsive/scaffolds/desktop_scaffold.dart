import 'package:flutter/material.dart';
import 'package:responsive_dash/theme/theme.dart';
import 'package:responsive_dash/widgets/appbar.dart';
import 'package:responsive_dash/widgets/box.dart';
import 'package:responsive_dash/widgets/drawer.dart';
import 'package:responsive_dash/widgets/gridview.dart';
import 'package:responsive_dash/widgets/tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: myAppBar,
      body: Row(
        children: [
          // open drawer
          const MyDrawer(),

          // rest of the page
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: MyGridView(
                      itemBuilderWidget: MyBox(),
                      itemCount: 4,
                      crossAxisCount: 4,
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
          MediaQuery.of(context).size.width > 1300
              ? Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      color: primaryColor,
                    ),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
