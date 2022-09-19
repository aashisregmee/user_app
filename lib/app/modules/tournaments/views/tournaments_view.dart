import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tournaments_controller.dart';

class TournamentsView extends GetView<TournamentsController> {
  const TournamentsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tournaments'),
        centerTitle: true,
      ),
      body: ListView.builder(itemBuilder: ((context, index) {
        return Card(
          margin: EdgeInsets.all(5),
          child: ListTile(leading: Icon(Icons.event),
title: Text('Ram Bahadur Tournament'),
subtitle: Text('Entry Fee: Rs.5000'),
trailing: ElevatedButton(onPressed: (){},child: Text('Join'),),

          ),);
      }))
    );
  }
}
