import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/loyalty_controller.dart';

class LoyaltyView extends GetView<LoyaltyController> {
  const LoyaltyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoyaltyView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LoyaltyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
