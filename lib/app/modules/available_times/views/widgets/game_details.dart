// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class GameDetails extends StatelessWidget {
  const GameDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          child: Container(
                            color: Colors.blue.withOpacity(0.2),
                            width: 80,
                            height: 35,
                            child: Center(
                                child: Text(
                              "Time",
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
                      child: Text(
                        "Book Now",           
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
