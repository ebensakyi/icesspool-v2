import 'package:get/get.dart';

import '../controllers/make_request_page_controller.dart';

class MakeRequestPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MakeRequestPageController>(
      () => MakeRequestPageController(),
    );
  }
}
