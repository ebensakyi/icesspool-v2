import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icesspool_mobilev2/app/modules/auth-page/controllers/auth_page_controller.dart';
import 'package:icesspool_mobilev2/core/validator.dart';
import 'package:icesspool_mobilev2/widgets/button.dart';
import 'package:icesspool_mobilev2/widgets/text-box.dart';
import 'package:get/get.dart';

import '../../../../themes/colors.dart';
import '../../../../widgets/dropdown.dart';
import '../../../routes/app_pages.dart';
import '../model/Region.dart';

class RegisterRegularUserPageView extends GetView<AuthPageController> {
  final registerFormKey = new GlobalKey<FormState>();

  RegisterRegularUserPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: MyColors.primary1,
          elevation: 0,
        ),
        body: Form(
          key: registerFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // SizedBox(
                  //   height: 50,
                  // ),
                  // Text("Register as a regular user"),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset("assets/images/mobile_user_1.svg",
                        width: 210),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: TextBox(
                      controller: controller.surnameController,
                      labelText: "Surname",
                      hintText: "Enter surname *",
                      prefixIcon: Icons.supervised_user_circle_rounded,
                      validator: (value) {
                        return Validator.validateUserName(value);
                      },
                      // obscureText: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: TextBox(
                      controller: controller.otherNamesController,
                      labelText: "Other names",
                      hintText: "Enter other names *",
                      prefixIcon: Icons.supervised_user_circle_rounded,
                      validator: (value) {
                        return Validator.validateUserName(value);
                      },
                      // obscureText: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Dropdown(
                      onChangedCallback: (newValue) {
                        controller.selectedRegion.value = newValue;
                      },
                      // initialValue: basicInfoSectionController.returnValue(
                      //     basicInfoSectionController
                      //         .selectedRespondentDesignation.value),
                      value: controller.selectedRegion.value,
                      dropdownItems: [
                        {"id": 1, "name": "Greater Accra"},
                        {"id": 2, "name": "Northern Region"}
                      ].map((var obj) {
                        return DropdownMenuItem<String>(
                          value: obj["id"].toString(),
                          child: Text(obj["name"].toString()),
                        );
                      }).toList(),
                      hintText: '',
                      labelText: 'Please select region of residence *',
                      // validator: (value) {
                      //   return Validator.dropdownValidator(value);
                      // },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: TextBox(
                      controller: controller.phoneNumberController,
                      labelText: "Phone number",
                      hintText: "Enter phone number *",
                      prefixIcon: Icons.phone_android_outlined,
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        return Validator.validatePhone(value);
                      },
                      // maxLength: 10,
                      // obscureText: false,
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(2.0),
                  //   child: TextBox(
                  //     controller: controller.emailController,
                  //     labelText: "Email",
                  //     hintText: "Enter email",
                  //     prefixIcon: Icons.email_outlined,
                  //     validator: (value) {
                  //       return Validator.validateEmail(value);
                  //     },
                  //     // obscureText: false,
                  //   ),
                  // ),
                  Obx(() => Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextBox(
                          controller: controller.passwordController,
                          labelText: "Password",
                          hintText: "Enter Password",
                          prefixIcon: Icons.password_outlined,
                          obscureText: controller.isHidden.value,
                          suffixIcon: IconButton(
                            onPressed: controller.togglePasswordView,
                            icon: Icon(
                              controller.isHidden.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                          validator: (value) {
                            return Validator.validatePassword(value);
                          },
                        ),
                      )),

                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Button(
                      backgroundColor: MyColors.primary2,
                      onPressed: () {
                        registerFormKey.currentState!.validate();
                        // Get.toNamed(Routes.OTP_PAGE);
                        controller.handleRegisterRegularUser();
                      },
                      showLoading: false,
                      label: "Register",
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 16, right: 16),
                  //   child: Text(
                  //       "By continuing, you agree to iCesspool's Terms  of Service and Privacy"),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
