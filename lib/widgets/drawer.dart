import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.grey[500],
      shape: const ContinuousRectangleBorder(),
      backgroundColor: Colors.grey[300],
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          DrawerHeader(
            margin: const EdgeInsetsDirectional.only(bottom: 25),
            child: Icon(
              Icons.person,
              color: Colors.grey[600],
              size: 120,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.grey[600],
            ),
            title: Text(
              "DASHBOARD",
              style: TextStyle(
                letterSpacing: 4,
                color: Colors.grey[600],
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.chat,
              color: Colors.grey[600],
            ),
            title: Text(
              "MESSAGE",
              style: TextStyle(
                letterSpacing: 4,
                color: Colors.grey[600],
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.grey[600],
            ),
            title: Text(
              "SETTINGS",
              style: TextStyle(
                letterSpacing: 4,
                color: Colors.grey[600],
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.grey[600],
            ),
            title: Text(
              "LOGOUT",
              style: TextStyle(
                letterSpacing: 4,
                color: Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
