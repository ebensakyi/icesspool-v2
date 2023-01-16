import 'package:get/get.dart';

import '../controllers/service_provider_landing_page_controller.dart';

class ServiceProviderLandingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServiceProviderLandingPageController>(
      () => ServiceProviderLandingPageController(),
    );
  }
}
