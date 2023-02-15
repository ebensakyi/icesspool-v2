import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:icesspool_mobilev2/app/modules/make-request-page/providers/request_type_provider.dart';
import 'package:icesspool_mobilev2/app/modules/make-request-page/providers/service_type_provider.dart';
import 'package:icesspool_mobilev2/core/uuid_gen.dart';

import '../model/RequestType.dart';
import '../model/ServiceType.dart';
import '../providers/price_provider.dart';

class MakeRequestPageController extends GetxController {
  final isChecked = false.obs;
  late StreamSubscription<Position> _positionStream;
  bool servicestatus = false;
  bool haspermission = false;
  late LocationPermission permission;
  final latitude = "".obs;
  final longitude = "".obs;
  final accuracy = "".obs;
  final clientNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final landmarkController = TextEditingController();
  final selectedRequestType = "".obs;
  final selectedToiletRequestService = "".obs;
  final selectedWaterRequestService = "".obs;
  final requestTypes = [].obs;
  final pricing = [].obs;
  final children = <Widget>[];

  final serviceTypes = <ServiceType>[].obs;

  final currentStep = 0.obs;
  final count = 0.obs;
  StepperType stepperType = StepperType.vertical;

  final formKey = new GlobalKey<FormState>();

  final selectedAxle = false.obs;

  @override
  onInit() async {
    serviceTypes.value = await ServiceTypeProvider().getServices();
    requestTypes.value = await RequestTypeProvider().getRequests();
    pricing.value = await PriceProvider().getPrices();
    await checkGpsPermission();
    getCurrentLocation();
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

  getCurrentLocation() async {
    try {
      LocationSettings locationSettings = LocationSettings(
        accuracy: LocationAccuracy.high,
        // distanceFilter:
        //     100,
      );
      // _positionStream.resume();

      _positionStream =
          Geolocator.getPositionStream(locationSettings: locationSettings)
              .listen((Position position) {
        // print(position.longitude); //Output: 80.24599079
        // print(position.latitude); //Output: 29.6593457
        // print(position.accuracy);
        longitude.value = position.longitude.toString();
        latitude.value = position.latitude.toString();
        accuracy.value = position.accuracy.toString();

        log(accuracy.toString());
        if (position.accuracy < 5) {
          _positionStream.cancel();
        }
      });
    } catch (e) {
      log(e.toString());
    }
  }

  checkGpsPermission() async {
    servicestatus = await Geolocator.isLocationServiceEnabled();
    if (servicestatus) {
      permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          print('Location permissions are denied');
        } else if (permission == LocationPermission.deniedForever) {
          print("'Location permissions are permanently denied");
        } else {
          haspermission = true;
        }
      } else {
        haspermission = true;
      }
    } else {
      print("GPS Service is not enabled, turn on GPS location");
    }
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

  // List<Widget> buildPricing() {
  //   children.clear();
  //   for (var i = 0; i < pricing.length; i++) {
  //     children.add(Padding(
  //       padding: const EdgeInsets.all(4.0),
  //       child:
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         children: [
  //           Checkbox(
  //               value: isChecked.value,
  //               onChanged: (bool? value) {
  //                 isChecked.value = true;
  //                 log(pricing[i].cost);
  //               }),
  //           Image.asset(
  //             "assets/images/tanker.png",
  //             width: 24,
  //           ),
  //           Text(
  //             pricing[i].name,
  //             style: TextStyle(color: Colors.black54),
  //           ),
  //           Text(
  //             "GHS ${pricing[i].cost} per trip",
  //             style: TextStyle(
  //                 color: Colors.black,
  //                 fontWeight: FontWeight.bold,
  //                 fontSize: 16),
  //           ),
  //         ],
  //       ),
  //     ));
  //   }
  //   return children;
  // }

  buildPricing() {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: new List.generate(
        3,
        (index) => new ListTile(
          title: Text('Item ${pricing[index]}'),
        ),
      ),
    );

    // Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   children: [
    //     Checkbox(
    //         value: isChecked.value,
    //         onChanged: (bool? value) {
    //           isChecked.value = true;
    //           log(pricing[i].cost);
    //         }),
    //     Image.asset(
    //       "assets/images/tanker.png",
    //       width: 24,
    //     ),
    //     Text(
    //       pricing[i].name,
    //       style: TextStyle(color: Colors.black54),
    //     ),
    //     Text(
    //       "GHS ${pricing[i].cost} per trip",
    //       style: TextStyle(
    //           color: Colors.black,
    //           fontWeight: FontWeight.bold,
    //           fontSize: 16),
    //     ),
    //   ],
    // ),
  }

  selectPricing() {}
}
