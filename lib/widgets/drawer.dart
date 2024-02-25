import 'package:flutter/material.dart';
import 'package:responsive_dash/theme/theme.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      surfaceTintColor: Colors.transparent,
      shadowColor: primaryColor,
      shape: const ContinuousRectangleBorder(),
      backgroundColor: bgColor,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          DrawerHeader(
            margin: const EdgeInsetsDirectional.only(bottom: 25),
            child: Icon(
              Icons.person,
              color: secondaryColor,
              size: 120,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: secondaryColor,
            ),
            title: Text(
              "DASHBOARD",
              style: TextStyle(
                letterSpacing: 4,
                color: secondaryColor,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.chat,
              color: secondaryColor,
            ),
            title: Text(
              "MESSAGE",
              style: TextStyle(
                letterSpacing: 4,
                color: secondaryColor,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: secondaryColor,
            ),
            title: Text(
              "SETTINGS",
              style: TextStyle(
                letterSpacing: 4,
                color: secondaryColor,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: secondaryColor,
            ),
            title: Text(
              "LOGOUT",
              style: TextStyle(
                letterSpacing: 4,
                color: secondaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
