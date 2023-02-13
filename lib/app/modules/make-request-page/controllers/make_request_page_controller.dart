import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icesspool_mobilev2/app/modules/make-request-page/providers/request_type_provider.dart';
import 'package:icesspool_mobilev2/app/modules/make-request-page/providers/service_type_provider.dart';

import '../model/RequestType.dart';
import '../model/ServiceType.dart';

class MakeRequestPageController extends GetxController {
  final clientNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final landmarkController = TextEditingController();
  final selectedRequestType = "".obs;
  final selectedToiletRequestService = "".obs;
  final selectedWaterRequestService = "".obs;
  final requestTypes = <RequestType>[].obs;
  final serviceTypes = <ServiceType>[].obs;

  final currentStep = 0.obs;
  final count = 0.obs;
  StepperType stepperType = StepperType.vertical;

  final formKey = new GlobalKey<FormState>();

  final selectedAxle = false.obs;

  @override
  onInit() async {
    // serviceTypes.value = await ServiceTypeProvider().getServices();
    // requestTypes.value = await RequestTypeProvider().getRequests();

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
    inspect(step);
    currentStep.value = step;
  }

  continued() {
    log(">>> $currentStep");

    if (currentStep < 2) {
      currentStep.value += 1;
    } else {
      //   _submitRequest();
      //  _formSubmitted = true;
    }
    if (currentStep == 3) {
      log("Make Payment");
    }
  }

  cancel() {
    currentStep.value > 0 ? currentStep.value -= 1 : null;
  }
}
