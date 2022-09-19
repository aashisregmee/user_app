import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'widgets/game_details.dart';
import 'widgets/my_drawer.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("Futsal Made Simple "),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          // image for the homepage
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/images/futsal.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    GameDetails(),
                    GameDetails(),
                    GameDetails(),
                    GameDetails()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
