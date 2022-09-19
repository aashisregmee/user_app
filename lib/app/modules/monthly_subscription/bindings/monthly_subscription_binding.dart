import 'package:get/get.dart';

import '../controllers/monthly_subscription_controller.dart';

class MonthlySubscriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MonthlySubscriptionController>(
      () => MonthlySubscriptionController(),
    );
  }
}
