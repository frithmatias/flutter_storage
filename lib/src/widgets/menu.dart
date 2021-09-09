import 'package:flutter/material.dart';
import 'package:storage/src/pages/home_page.dart';
import 'package:storage/src/pages/settings_page.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
      DrawerHeader(
          child: Container(),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'), fit: BoxFit.cover),
          )),
      ListTile(
        leading: Icon(Icons.pages, color: Colors.blue),
        title: Text('Home'),
        onTap: () {
          Navigator.pushReplacementNamed(context, HomePage.routeName);
        },
      ),
      ListTile(
        leading: Icon(Icons.pages, color: Colors.blue),
        title: Text('People'),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.pages, color: Colors.blue),
        title: Text('Settings'),
        onTap: () {
          Navigator.pushReplacementNamed(context, SettingsPage.routeName);
        },
      ),
    ]));
  }
}
