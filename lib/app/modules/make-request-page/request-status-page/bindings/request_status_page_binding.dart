import 'package:get/get.dart';

import '../controllers/request_status_page_controller.dart';

class RequestStatusPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RequestStatusPageController>(
      () => RequestStatusPageController(),
    );
  }
}
