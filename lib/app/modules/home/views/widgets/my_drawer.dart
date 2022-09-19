// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_app/app/routes/app_pages.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(),
            child: Image.asset(
              "assets/images/futsal.jpg",
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),onTap: (){
              Get.toNamed(Routes.MESSAGES);
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
           onTap: (){
              Get.toNamed(Routes.PROFILE);
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Game History'),onTap: (){
              Get.toNamed(Routes.HISTORY);
            },
            
          ),
          ListTile(
            leading: Icon(Icons.emoji_events),
            title: Text('Tournaments'),onTap: (){
              Get.toNamed(Routes.TOURNAMENTS);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
