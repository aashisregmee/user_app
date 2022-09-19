// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
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
            child: Column( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.account_circle, size: 50, color: Colors.grey,),
                SizedBox(height: 15,),
                Text("Aashish Regmi")
              ],
            )
          ),
          
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Edit Profile'),
           onTap: (){
              Get.toNamed(Routes.EDIT_PROFILE);
            },
          ),
          ListTile(
            leading: Icon(Icons.password),
            title: Text('Change Password'),onTap: (){
              Get.toNamed(Routes.CHANGE_PASSWORD);
            },
            
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('View Location'),onTap: (){
            
            },
          ),
          
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'), onTap: (){
              Get.offNamed(Routes.LOGIN);
            },
          ),
        ],
      ),
    );
  }
}
// keytool -list -v -alias androiddebugkey -keystore %USERPROFILE%\.android\debug.keystore