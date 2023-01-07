import 'package:get/get.dart';

class AuthPageController extends GetxController {
  //TODO: Implement AuthPageController
  final isHidden = true.obs;

  final count = 0.obs;

  final selectedRegion = "".obs;
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

  void togglePasswordView() => isHidden.value = !isHidden.value;
}
