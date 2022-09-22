import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:user_app/app/modules/available_times/views/widgets/game_details.dart';
import 'package:user_app/khalti/khalti_payment_screen.dart';

import '../controllers/available_times_controller.dart';

class AvailableTimesView extends GetView<AvailableTimesController> {
  const AvailableTimesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<String> time = [
      "6-7",
      "7-8",
      "8-9",
      "9-10",
      "10-11",
      "11-12",
      "12-13",
      "13-14",
      "14-15",
      "15-16",
      "16-17",
      "17-18",
      "18-19",
      "19-20"
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text("Available Times"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: 14,
            itemBuilder: ((context, index) {
              return Card(
                elevation: 10,
                child: Container(
                  // width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            'assets/images/fut.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            // width: 500,
                            height: 100,
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Card(
                                    child: Container(
                                      color: Colors.blue.withOpacity(0.2),
                                      width: 80,
                                      height: 35,
                                      child: Center(
                                          child: Text(
                                        time[index],
                                        style: TextStyle(fontSize: 15),
                                      )),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.green,
                                        radius: 5,
                                      ),
                                      Text("Available"),
                                    ],
                                  ),
                                  Text("Rs 1000")
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(7),
                          height: 50,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue.withOpacity(0.7)),
                          child: Center(
                              child: FittedBox(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const KhaltiPaymentPage()),
                                );
                              },
                              child: Text(
                                "Book Now",
                              ),
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            })));
  }
}
