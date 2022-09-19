

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:user_app/app/routes/app_pages.dart';
import 'package:user_app/app/utils/constants.dart';

import '../controllers/home_controller.dart';

import 'widgets/my_drawer.dart';

class HomeView extends GetView<HomeController> {
  List<Map<String,dynamic>> tiles = [{"name": "My Bookings", "icon": Icons.sports_football, "route":Routes.HISTORY},
  {"name": "Monthly Subscription", "icon": Icons.sports_football, "route":Routes.MONTHLY_SUBSCRIPTION},
  {"name": "Tournament", "icon": Icons.emoji_objects_sharp, "route":Routes.TOURNAMENTS},
  {"name": "Available Time", "icon": Icons.sports_football, "route":Routes.AVAILABLE_TIMES},
  {"name": "Message", "icon": Icons.chat, "route":Routes.MESSAGES},
  {"name": "Loyality", "icon": Icons.reviews_sharp, "route":Routes.MESSAGES},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Futsal Made Simple "),
        backgroundColor: Colors.green,
      ),
      body: 
      GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),itemCount: tiles.length, itemBuilder: (context, index){
        return GestureDetector(onTap: (){
          Get.toNamed(tiles[index]["route"]);
        },
          child: Container(
            decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 5, spreadRadius: 2, color: Colors.grey)],borderRadius: BorderRadius.circular(10), color: Colors.white),
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(tiles[index]["icon"],size: 50, color: kPrimaryColor,), SizedBox(height: 15,), Text(tiles[index]["name"],textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500),)],
          )),
        );
      })
      
    );
  }
}
