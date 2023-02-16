import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:icesspool_mobilev2/app/modules/auth-page/provider/login-provider.dart';
import 'package:icesspool_mobilev2/app/modules/auth-page/provider/registration-provider.dart';

import '../../../../core/constants.dart';
import '../../../routes/app_pages.dart';
import '../provider/otp-provider.dart';

class AuthPageController extends GetxController {
  final surnameController = TextEditingController();
  final otherNamesController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final companyController = TextEditingController();

  final num1Controller = TextEditingController();
  final num2Controller = TextEditingController();
  final num3Controller = TextEditingController();
  final num4Controller = TextEditingController();

  final isHidden = true.obs;

  final count = 0.obs;

  final selectedRegion = "".obs;
  final box = GetStorage();
  @override
  void onInit() {
    // var userType = box.read(Constants.USER_TYPE);
    // if (userType == 3) {
    //   Get.offNamed(Routes.SERVICE_PROVIDER_LANDING_PAGE);
    // }
    // if (userType == 4) {
    //   Get.offNamed(Routes.CLIENT_LANDING_PAGE);
    // }
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
    var response = await LoginProvider()
        .login(phoneNumberController.text, passwordController.text);

    if (response != null) {
      box.write(Constants.USER_ID, response["userId"]);
      box.write(Constants.USER_TYPE, response["userTypeId"]);

      if (response["userTypeId"] == 4) {
        return Get.toNamed(Routes.CLIENT_LANDING_PAGE);
      }
      if (response["userTypeId"] == 3) {
        return Get.toNamed(Routes.SERVICE_PROVIDER_LANDING_PAGE);
      }
    }
    // inspect(response);
    // if (passwordController.text == "c") {
    //   Get.toNamed(Routes.CLIENT_LANDING_PAGE);
    // } else if (passwordController.text == "p") {
    //   Get.toNamed(Routes.SERVICE_PROVIDER_LANDING_PAGE);
    // }
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

    RegistrationProvider().registerServiceProvider(surname, otherNames, phone,
        email, password, company, selectedRegion.value);
  }

  verifyOtp() {
    var code = "${num1Controller.text}" +
        "${num2Controller.text}" +
        "${num3Controller.text}" +
        "${num4Controller.text}";
    // var response =
    //     OtpProvider().verifyOtpProvider(phoneNumberController.text, code);
    // return response;
    return 1;
  }
}
