import 'package:get/get.dart';

import '../controllers/available_times_controller.dart';

class AvailableTimesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AvailableTimesController>(
      () => AvailableTimesController(),
    );
  }
}
