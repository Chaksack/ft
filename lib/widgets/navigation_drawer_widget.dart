// ignore_for_file: prefer_equal_for_default_values, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:fieldteller/widgets/my_header_drawer.dart';

class NavigationDrawerWidget extends StatefulWidget {
  @override
  _NavigationDrawerWidgetState createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            MyHeaderDrawer(),
            MyDrawerList(),
          ],
        ),
      )),
    );
  }
}

listView({children, param1}) {}

Widget MyDrawerList() {
  var currentPage = DrawerSections.settings;
  return Container(
    padding: EdgeInsets.only(
      top: 15,
    ),
    child: Column(
      children: [
        menuItem(1, "Settings", Icons.settings,
            currentPage == DrawerSections.settings ? true : false),
        menuItem(2, "Float actions", Icons.account_balance_wallet,
            currentPage == DrawerSections.settings ? true : false),
        Divider(),
        menuItem(3, "Logout", Icons.logout_rounded,
            currentPage == DrawerSections.logout ? true : false),
      ],
    ),
  );
}

menuItem(int id, String title, IconData icon, bool selected) {
  return Material(
      child: InkWell(
    onTap: () {
      setState(() {
        if (id == 1) {
          var currentPage = DrawerSections.settings;
        } else if (id == 2) {
          var currentPage = DrawerSections.float_actions;
        } else if (id == 3) {
          var currentPage = DrawerSections.logout;
        }
      });
    },
    child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
              child: Icon(
                icon,
                size: 20,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Text(title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  )),
            ),
          ],
        )),
  ));
}

void setState(Null Function() param0) {}

enum DrawerSections {
  settings,
  float_actions,
  logout,
}
