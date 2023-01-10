import 'package:get/get.dart';

import '../make-request-page/views/make_request_page_view.dart';

class ClientController extends GetxController {
  Get.put(MakeRequestPageController());

  final count = 0.obs;

  final index = 0.obs;
  final screens = [
    MakeRequestPageView(),
    MakeRequestPageView(),
    MakeRequestPageView(),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
