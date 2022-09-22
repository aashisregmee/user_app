import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:user_app/app/routes/app_pages.dart';
import 'package:user_app/app/utils/constants.dart';

import '../controllers/home_controller.dart';

import 'widgets/my_drawer.dart';

class HomeView extends GetView<HomeController> {
  List<Map<String, dynamic>> tiles = [
    {
      "name": "Available Time",
      "icon": Icons.watch_outlined,
      "route": Routes.AVAILABLE_TIMES
    },
    {
      "name": "My Bookings",
      "icon": Icons.sports_soccer_sharp,
      "route": Routes.HISTORY
    },
    {"name": "Loyalty", "icon": Icons.card_giftcard, "route": Routes.MESSAGES},
    {
      "name": "Tournament",
      "icon": Icons.emoji_events,
      "route": Routes.TOURNAMENTS
    },
    {
      "name": "Monthly Subscription",
      "icon": Icons.bookmark_add_rounded,
      "route": Routes.MONTHLY_SUBSCRIPTION
    },
    {
      "name": "View Location",
      "icon": Icons.location_on,
      "route": Routes.VIEW_LOCATION
    },
    {"name": "Feedback", "icon": Icons.feedback, "route": Routes.FEEDBACK},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text("Futsal Made Simple "),
          backgroundColor: Colors.green,
        ),
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: tiles.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed(tiles[index]["route"]);
                },
                child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 2,
                              color: Colors.grey)
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          tiles[index]["icon"],
                          size: 50,
                          color: kPrimaryColor,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          tiles[index]["name"],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    )),
              );
            }));
  }
}
