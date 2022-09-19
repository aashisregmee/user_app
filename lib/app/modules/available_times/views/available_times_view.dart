import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:user_app/app/modules/available_times/views/widgets/game_details.dart';

import '../controllers/available_times_controller.dart';

class AvailableTimesView extends GetView<AvailableTimesController> {
  const AvailableTimesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Available Times"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: ((context, index) {
        return GameDetails();
      }))
    );
  }
}
