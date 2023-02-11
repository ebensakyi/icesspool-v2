import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icesspool_mobilev2/app/modules/auth-page/provider/registration-provider.dart';

import '../../../routes/app_pages.dart';

class AuthPageController extends GetxController {
  final surnameController = TextEditingController();
  final otherNamesController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final companyController = TextEditingController();
  final region = "".obs;
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
    if (passwordController.text == "c") {
      Get.toNamed(Routes.CLIENT_LANDING_PAGE);
    } else if (passwordController.text == "p") {
      Get.toNamed(Routes.SERVICE_PROVIDER_LANDING_PAGE);
    }
  }

  void togglePasswordView() => isHidden.value = !isHidden.value;

  void handleRegisterRegularUser() {
    var surname = surnameController.text.toString();
    var otherNames = otherNamesController.text;
    var phone = phoneNumberController.text;
    var email = emailController.text;
    var password = passwordController.text;

    RegistrationProvider()
        .registerRegularUser(surname, otherNames, phone, email, password);
  }

  void handleRegisterServiceProvider() {
    var surname = surnameController.text.toString();
    var otherNames = otherNamesController.text;
    var phone = phoneNumberController.text;
    var email = emailController.text;
    var password = passwordController.text;
    var company = companyController.text;

    RegistrationProvider().registerServiceProvider(
        surname, otherNames, phone, email, password, company, region);
  }
}
