import 'package:get/get.dart';

import '../../make-request-page/controllers/make_request_page_controller.dart';
import '../controllers/client_controller.dart';

class ClientBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClientController>(
      () => ClientController(),
    );

    Get.lazyPut<MakeRequestPageController>(
      () => MakeRequestPageController(),
    );
  }
}
