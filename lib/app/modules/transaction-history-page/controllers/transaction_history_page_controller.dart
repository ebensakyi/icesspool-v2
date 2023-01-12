import 'dart:developer';

import 'package:get/get.dart';

class TransactionHistoryController extends GetxController {
  //TODO: Implement TransactionHistoryController

  final count = 0.obs;
  @override
  void onInit() {
    log("TX H  iinit");
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
