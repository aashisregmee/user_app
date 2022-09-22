import 'package:get/get.dart';

import '../controllers/tournament_details_controller.dart';

class TournamentDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TournamentDetailsController>(
      () => TournamentDetailsController(),
    );
  }
}
