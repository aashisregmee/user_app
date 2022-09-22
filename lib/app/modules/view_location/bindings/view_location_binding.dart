import 'package:get/get.dart';

import '../controllers/view_location_controller.dart';

class ViewLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewLocationController>(
      () => ViewLocationController(),
    );
  }
}
