import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/view_location_controller.dart';

class ViewLocationView extends GetView<ViewLocationController> {
  const ViewLocationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ViewLocationView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ViewLocationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
