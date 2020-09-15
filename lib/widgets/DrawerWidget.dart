import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Athman Khadija"),
            accountEmail: Text("athman.hadi@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person),
              backgroundColor: Colors.white,
            ),
            decoration: BoxDecoration(
              color: Color(0xffBE5683),
            ),
          ),
          DrawerItem(
            label: "Home",
            icon: Icons.home,
          ),
          DrawerItem(
            label: "Profile",
            icon: Icons.person,
          ),
          DrawerItem(
            label: "Report Issue",
            icon: Icons.report,
          ),
          DrawerItem(
            label: "Help",
            icon: Icons.help,
          ),
          DrawerItem(
            label: "Get Support",
            icon: Icons.hearing,
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Column(
                children: <Widget>[
                  Divider(),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "@ Kameza 2020",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String label;
  final IconData icon;

  DrawerItem({this.label, this.icon});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 14,
      ),
    );
  }
}
