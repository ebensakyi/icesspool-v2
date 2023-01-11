import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icesspool_mobilev2/app/modules/client-landing-page/views/about_view.dart';
import 'package:icesspool_mobilev2/app/modules/client-landing-page/views/settings_view.dart';
import 'package:icesspool_mobilev2/app/modules/client-landing-page/views/transactions_view.dart';
import 'package:icesspool_mobilev2/app/modules/make-request-page/views/make_request_page_view.dart';
import 'package:icesspool_mobilev2/app/modules/transaction-history-page/views/transaction_history_page_view.dart';

import '../views/make_request_view.dart';

class ClientController extends GetxController {
  final currentStep = 0.obs;
  final count = 0.obs;
  StepperType stepperType = StepperType.vertical;

  final formKey = new GlobalKey<FormState>();

  final selectedRequestType = "".obs;
  final index = 0.obs;
  final screens = [
    MakeRequestPageView(),
    TransactionHistoryPageView(),
    SettingsView(),
    AboutView()
  ];

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

  currentStepperType() {
    return stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical;
  }

  tapped(int step) {
    currentStep.value = step;
  }

  continued() {
    if (currentStep < 2) {
      currentStep.value += 1;
    } else {
      //   _submitRequest();
      //  _formSubmitted = true;
    }
  }

  cancel() {
    currentStep.value > 0 ? currentStep.value -= 1 : null;
  }
}
