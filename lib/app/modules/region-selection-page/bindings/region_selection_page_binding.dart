import 'package:get/get.dart';

import '../controllers/region_selection_page_controller.dart';

class RegionSelectionPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegionSelectionPageController>(
      () => RegionSelectionPageController(),
    );
  }
}
