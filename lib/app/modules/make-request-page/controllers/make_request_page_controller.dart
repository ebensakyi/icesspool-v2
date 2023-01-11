import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MakeRequestPageController extends GetxController {
  final currentStep = 0.obs;
  final count = 0.obs;
  StepperType stepperType = StepperType.vertical;

  final formKey = new GlobalKey<FormState>();

  final selectedRequestType = "".obs;

  final selectedAxle = false.obs;

  @override
  void onInit() {
    log("mr init");
    super.onInit();
  }

  @override
  void onReady() {
    log("mr ready");
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
    inspect(step);
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
