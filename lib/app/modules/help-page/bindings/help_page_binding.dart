import 'package:get/get.dart';

import '../controllers/help_page_controller.dart';

class HelpPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HelpPageController>(
      () => HelpPageController(),
    );
  }
}
