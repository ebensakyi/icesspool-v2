import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:icesspool_mobilev2/app/routes/app_pages.dart';
import 'package:icesspool_mobilev2/core/constants.dart';

class AccountController extends GetxController {
  //TODO: Implement SettingsController

  final box = GetStorage();
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

  void logout() {
    var x = box.read(Constants.USER_ID);
    Get.offNamed(Routes.AUTH_PAGE);
    box.erase();
    inspect(x);
  }

  void login() {
    box.write(Constants.USER_ID, "LOL");
  }
}
