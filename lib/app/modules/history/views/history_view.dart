import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom:  TabBar(
              tabs: [
                Tab(text: "Upcoming",),
                Tab(text: "History",),
                
              ],
            ),
            title: const Text('My Bookings'),
          ),
          body:TabBarView(
            children: [
              ListView.builder(itemCount: 5, itemBuilder: (context,index){
                return Card(child: ListTile(leading: Icon(Icons.gamepad),title: Text("15 sept 10 am"), trailing: Text("Rs.1000"),));
              }),
              ListView.builder(itemCount: 5, itemBuilder: (context,index){
                return Card(child: ListTile(leading: Icon(Icons.gamepad),title: Text("15 sept 10 am"), trailing: Text("Rs.1000"),));
              }),
          
           
            ],
          ),
        ),
      );
  }
}
