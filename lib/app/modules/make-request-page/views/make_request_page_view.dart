import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:icesspool_mobilev2/themes/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icesspool_mobilev2/widgets/text-box.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../../../core/validator.dart';
import '../../../../../widgets/dropdown.dart';
import '../controllers/make_request_page_controller.dart';

class MakeRequestView extends GetView<MakeRequestPageController> {
  MakeRequestView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: const Text('Make Request1'),
      //   centerTitle: true,
      //   backgroundColor: Colors.transparent,
      //   foregroundColor: MyColors.primary1,
      //   elevation: 0,
      // ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.indigo,
        title: const Text('Make Request'),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            // statusBarColor: Colors.indigo,

            // Status bar brightness (optional)
            // statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
            // statusBarBrightness: Brightness.light, // For iOS (dark icons)
            ),
      ),
      body: Obx(
        () => Stepper(
          key: controller.formKey,
          type: MediaQuery.of(context).orientation == Orientation.portrait
              ? StepperType.vertical
              : StepperType.horizontal,
          physics: const ScrollPhysics(),
          currentStep: controller.currentStep.value,
          onStepTapped: (step) => controller.tapped(step),
          onStepContinue: controller.continued,
          onStepCancel: controller.cancel,
          controlsBuilder: (context, _) {
            return Row(
              children: <Widget>[
                controller.currentStep < 2
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(color: Colors.indigo),
                          height: 35,
                          child: TextButton(
                            onPressed: () {
                              controller.continued();
                            },
                            child: Text(
                              'Continue',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(color: Colors.indigo),
                          height: 35,
                          child: TextButton(
                            onPressed: () {
                              controller.makeRequest();
                            },
                            child: Text(
                              'Make Request',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                TextButton(
                  onPressed: () {
                    controller.cancel();
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            );
          },
          steps: <Step>[
            Step(
              subtitle: Text('Enter personal info here'),
              title: const Text('Personal Info'),
              content: Column(
                children: <Widget>[
                  TextBox(
                    labelText: "Enter your name or company",
                    controller: controller.clientNameController,
                  ),
                  TextBox(
                    labelText: "Enter phone number",
                    controller: controller.phoneNumberController,
                  ),
                  TextBox(
                      labelText: "Enter location detail/landmark",
                      controller: controller.landmarkController)
                  // TextFormField(
                  //   decoration: const InputDecoration(
                  //     labelText: 'Enter name of sender',
                  //     icon: Icon(Icons.person),
                  //   ),
                  //   controll)er: _senderNameController,
                  // ),
                  // TextFormField(
                  //   decoration: const InputDecoration(
                  //     labelText: 'Enter phone number',
                  //     icon: Icon(Icons.phone),
                  //   ),
                  //   keyboardType: TextInputType.number,
                  //   controller: _senderPhoneNumberController,
                  // ),
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //     labelText: 'Choose pickup location',
                  //     icon: Icon(Icons.location_pin),
                  //     suffixIcon: IconButton(
                  //       onPressed: () {},
                  //       icon: Icon(Icons.add_location_sharp),
                  //     ),

                  //     // suffix: ElevatedButton(
                  //     //   child: Text("Pick location from map"),
                  //     //   onPressed: () {},
                  //     // ),
                  //   ),
                  //   controller: _pickupLocationController,
                  // ),
                ],
              ),
              isActive: controller.currentStep >= 0,
              state: controller.currentStep >= 0
                  ? StepState.complete
                  : StepState.disabled,
            ),
            Step(
              title: new Text(
                'Request details',
              ),
              content: Column(
                children: <Widget>[
                  Obx(
                    () => Visibility(
                      visible: true,
                      child: Dropdown(
                        onChangedCallback: (newValue) {
                          controller.selectedRequestType.value = newValue;
                        },
                        value: controller.selectedRequestType.value,
                        dropdownItems: controller.serviceTypes.map((var obj) {
                          return DropdownMenuItem<String>(
                            value: obj.id.toString(),
                            child: Text(obj.name.toString()),
                          );
                        }).toList(),
                        hintText: '',
                        labelText: 'Select service type *',
                        validator: (value) {
                          return Validator.dropdownValidator(value);
                        },
                      ),
                    ),
                  ),
                  Obx(
                    () => Dropdown(
                      onChangedCallback: (newValue) {
                        controller.selectedRequestType.value = newValue;
                      },
                      value: controller.selectedRequestType.value,
                      dropdownItems: controller.requestTypes.map((var obj) {
                        return DropdownMenuItem<String>(
                          value: obj.id.toString(),
                          child: Text(obj.name.toString()),
                        );
                      }).toList(),
                      hintText: '',
                      labelText: 'Select request type *',
                      validator: (value) {
                        return Validator.dropdownValidator(value);
                      },
                    ),
                  ),
                ],
              ),
              isActive: controller.currentStep >= 0,
              state: controller.currentStep >= 1
                  ? StepState.complete
                  : StepState.disabled,
            ),
            // Step(
            //   title: new Text('Item & other detais'),
            //   content: Column(
            //     children: <Widget>[

            //     ],
            //   ),
            //   isActive: _currentStep >= 0,
            //   state: _currentStep >= 2 ? StepState.complete : StepState.disabled,
            // ),
            Step(
              title: new Text('Choose Truck Type'),
              content: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextBox(
                        labelText: "Enter number of trips",
                        controller: controller.tripsNumberController),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        // border: Border.all(width: 3.0),
                        color: Color.fromARGB(197, 249, 221, 172),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                        children: controller.pricing
                            .map<Widget>(
                              (obj) => GetBuilder<MakeRequestPageController>(
                                builder: (_) => CheckboxListTile(
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        obj.name.toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Text(
                                        'GHS ${obj.cost.toString()} / trip',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54),
                                      ),
                                      Text('${obj.volume.toString()} m3')
                                    ],
                                  ),
                                  onChanged: (bool? value) {
                                    obj.isChecked = value!;
                                    controller.update();
                                    controller.selectedCost.value = obj.cost;
                                    log(obj.cost.toString());
                                  },
                                  value: obj.isChecked,
                                ),
                              ),
                            )
                            .toList(),
                      ),

                      // child: Dropdown(
                      //   onChangedCallback: (newValue) {
                      //     controller.selectedRequestType.value = newValue;
                      //   },
                      //   value: controller.selectedRequestType.value,
                      //   dropdownItems: controller.pricing.map((var obj) {
                      //     return DropdownMenuItem<String>(
                      //       value: obj.cost.toString(),
                      //       child: Text(
                      //           obj.name.toString() + " GHS " + obj.cost.toString()),
                      //     );
                      //   }).toList(),
                      //   hintText: '',
                      //   labelText: 'Select truck type *',
                      //   validator: (value) {
                      //     return Validator.dropdownValidator(value);
                      //   },
                      // ),
                      // child: Column(
                      //   children: controller.pricing
                      //       .map<Widget>(
                      //         (price) => ListTile(
                      //           leading: Text(
                      //             price.name.toString(),
                      //             style: TextStyle(
                      //                 fontSize: 14,
                      //                 color: Colors.black,
                      //                 fontWeight: FontWeight.bold),
                      //           ),
                      //           subtitle: Text(
                      //               'GHS ${price.cost.toString()} per trip for  ${price.volume.toString()} m3',
                      //               style: TextStyle(fontSize: 14)),
                      //           trailing: Checkbox(
                      //               value: controller.isChecked.value,
                      //               onChanged: (bool? newValue) {
                      //                 controller.isChecked.value =
                      //                     !controller.isChecked.value;
                      //               }),
                      //         ),
                      //       )
                      //       .toList(),
                      // ),
                    ),
                  ),
                ],
              ),
              isActive: controller.currentStep >= 0,
              state: controller.currentStep >= 2
                  ? StepState.complete
                  : StepState.disabled,
            ),
          ],
        ),
      ),
    );
  }
}

// int currentStep = 0;
// bool completed = false;
