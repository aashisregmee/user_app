import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/monthly_subscription_controller.dart';

class MonthlySubscriptionView extends GetView<MonthlySubscriptionController> {
  const MonthlySubscriptionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscription'),
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(20),
          child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Row(
                  
                  children: [Text("Time:"),Text("12pm-1pm")],),
                Row(children: [Text("Started At:"),Text("12pm-1pm")],),
                Row(children: [Text("Ends At:"),Text("12pm-1pm")],),
                Row(children: [Text("Days Remaining:"),Text("12pm-1pm")],),
              ]),SizedBox(width: 10,),
              Column(mainAxisAlignment: MainAxisAlignment.center,mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){

                  }, icon: Icon(Icons.refresh)),
                  Text('Renew')
                ],
              )
            ],
          ),
        ),),
      ),
    );
  }
}
