import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:icesspool_mobilev2/themes/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icesspool_mobilev2/widgets/text-box.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../../../core/validator.dart';
import '../../../../../widgets/dropdown.dart';
import '../controllers/make_request_page_controller.dart';

class MakeRequestView extends GetView<MakeRequestPageController> {
  const MakeRequestView({Key? key}) : super(key: key);
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
          steps: <Step>[
            Step(
              title: const Text('Personal Info'),
              content: Column(
                children: <Widget>[
                  TextBox(labelText: "Enter your name or company"),
                  TextBox(labelText: "Enter phone number"),
                  TextBox(labelText: "Enter location detail/landmark")
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
                  Obx(() => Dropdown(
                        onChangedCallback: (newValue) {
                          controller.selectedRequestType.value = newValue;
                        },
                        // initialValue: basicInfoSectionController.returnValue(
                        //     basicInfoSectionController
                        //         .selectedRespondentDesignation.value),
                        value: controller.selectedRequestType.value,
                        dropdownItems: [
                          "Request for water",
                          "Toilet desludging"
                        ].map((var obj) {
                          return DropdownMenuItem<String>(
                            value: obj.toString(),
                            child: Text(obj.toString()),
                            // value: obj.id.toString(),
                            // child: Text(obj.name.toString()),
                          );
                        }).toList(),
                        hintText: '',
                        labelText: 'Select request type *',
                        validator: (value) {
                          return Validator.dropdownValidator(value);
                        },
                      )),
                  Obx(() => Visibility(
                        visible: true,
                        child: Dropdown(
                          onChangedCallback: (newValue) {
                            controller.selectedRequestType.value = newValue;
                          },
                          // initialValue: basicInfoSectionController.returnValue(
                          //     basicInfoSectionController
                          //         .selectedRespondentDesignation.value),
                          value: controller.selectedRequestType.value,
                          dropdownItems: [
                            "Septic Tank Emptying",
                            "Manual Emptying Services",
                            "Biodigester Services",
                            "Blockage ",
                          ].map((var obj) {
                            return DropdownMenuItem<String>(
                              value: obj.toString(),
                              child: Text(obj.toString()),
                              // value: obj.id.toString(),
                              // child: Text(obj.name.toString()),
                            );
                          }).toList(),
                          hintText: '',
                          labelText: 'Select toilet service type *',
                          validator: (value) {
                            return Validator.dropdownValidator(value);
                          },
                        ),
                      )),
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //     labelText: 'Enter name of recipient',
                  //     icon: Icon(Icons.person),
                  //   ),
                  //   controller: _recepientNameController,
                  // ),
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //     labelText: 'Enter phone number',
                  //     icon: Icon(Icons.phone),
                  //   ),
                  //   keyboardType: TextInputType.number,
                  //   controller: _recepientPhoneNumberController,
                  // ),
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //     labelText: 'Choose delivery location',
                  //     icon: Icon(Icons.location_pin),
                  //   ),
                  //   controller: _deliveryLocationController,
                  // ),
                  // TextFormField(
                  //   keyboardType: TextInputType.multiline,
                  //   maxLines: null,
                  //   decoration: InputDecoration(
                  //     labelText: 'Enter item details and any additional details',
                  //     icon: Icon(Icons.list),
                  //   ),
                  //   controller: _detailsController,
                  // ),
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
              title: new Text('Make Payment'),
              content: Container(
                decoration: BoxDecoration(
                  // border: Border.all(width: 3.0),
                  color: Color.fromARGB(197, 246, 208, 142),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Checkbox(value: false, onChanged: null),
                          Image.asset(
                            "assets/images/tanker.png",
                            width: 24,
                          ),
                          Text(
                            "Single axle",
                            style: TextStyle(color: Colors.black54),
                          ),
                          Text(
                            "GHS 100 per trip",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Checkbox(
                              value: controller.selectedAxle.value,
                              onChanged: (value) {
                                controller.selectedAxle.value = value!;
                              }),
                          Image.asset(
                            "assets/images/tanker.png",
                            width: 24,
                          ),
                          Text(
                            "Medium axle",
                            style: TextStyle(color: Colors.black54),
                          ),
                          Text(
                            "GHS 200 per trip",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Checkbox(value: false, onChanged: null),
                          Image.asset(
                            "assets/images/tanker.png",
                            width: 24,
                          ),
                          Text(
                            "Double axle",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            "GHS 300 per trip",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Container(
                    //   alignment: Alignment.centerLeft,
                    //   child: Text(
                    //     'Who is paying for the service?',
                    //     // style: TextStyle(fontSize: 21),
                    //   ),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        // Radio(
                        //   value: 1,
                        //   groupValue: _payerId,
                        //   onChanged: (val) {
                        //     setState(() {
                        //       payerRadioButtonItem = 'I will pay for it';
                        //       _payerId = 1;
                        //     });
                        //   },
                        // ),
                        // Text(
                        //   'I will pay for it',
                        //   style: new TextStyle(fontSize: 12.0),
                        // ),
                        // Radio(
                        //   value: 2,
                        //   groupValue: _payerId,
                        //   onChanged: (val) {
                        //     setState(() {
                        //       payerRadioButtonItem = 'Receiver would pay';
                        //       _payerId = 2;
                        //     });
                        //   },
                        // ),
                        // Text(
                        //   'Receiver would pay',
                        //   style: new TextStyle(
                        //     fontSize: 12.0,
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
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

