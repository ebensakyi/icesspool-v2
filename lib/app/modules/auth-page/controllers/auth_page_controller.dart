import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class AuthPageController extends GetxController {
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
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

  void handleLogin() async {
    if (passwordController.text == "cccccccc") {
      Get.toNamed(Routes.CLIENT);
    } else if (passwordController.text == "pppppppp") {
      Get.toNamed(Routes.SERVICE_PROVIDER_LANDING_PAGE);
    }
  }

  void togglePasswordView() => isHidden.value = !isHidden.value;
}
