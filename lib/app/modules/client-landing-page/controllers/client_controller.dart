import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClientController extends GetxController {
  var tabIndex = 0;

  final inactiveColor = Colors.grey.obs;

  final formKey = new GlobalKey<FormState>();

  final selectedRequestType = "".obs;
  final index = 0.obs;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }

  @override
  void onInit() {
    log("cc init");
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
}
