import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:icesspool_mobilev2/themes/colors.dart';
import 'package:icesspool_mobilev2/widgets/button.dart';
import 'package:icesspool_mobilev2/widgets/text-box.dart';

import '../../../routes/app_pages.dart';
import '../controllers/auth_page_controller.dart';

class AuthPageView extends GetView<AuthPageController> {
  const AuthPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('AuthPageView'),
        //   centerTitle: true,
        // ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset("assets/images/icesspool_logo.png",
                      width: 300),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextBox(
                    labelText: "labelTesxt",
                    hintText: "Enter Phone Number",
                    prefixIcon: Icons.phone_android_outlined,
                    // obscureText: false,
                  ),
                ),
                Obx(() => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextBox(
                        labelText: "labelText",
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
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      child: Text("Forget Password?"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Button(
                    backgroundColor: MyColors.primary1,
                    onPressed: () {
                      Get.toNamed(Routes.MAKE_REQUEST_PAGE);
                    },
                    showLoading: false,
                    label: "Login",
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 16, right: 16),
                //   child: Text(
                //       "By continuing, you agree to iCesspool's Terms  of Service and Privacy"),
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Don't have an account?"),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Button(
                    backgroundColor: MyColors.primary2,
                    onPressed: () {
                      Get.toNamed(Routes.REGISTER_SELECTION_PAGE);
                    },
                    showLoading: false,
                    label: "Register",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Powered by:"),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    // decoration: BoxDecoration(
                    //   border:
                    //       Border.all(color: Color.fromARGB(255, 211, 226, 252)),
                    // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/mswr.jpg",
                            width: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/gama.jpg",
                            width: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/espa.png",
                            width: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/ssgl.png",
                            width: 40,
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Image.asset(
                        //     "assets/images/unicef.png",
                        //     width: 50,
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Image.asset(
                        //     "assets/images/tama.png",
                        //     width: 50,
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Image.asset(
                        //     "assets/images/crs.jpg",
                        //     width: 40,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    // decoration: BoxDecoration(
                    //   border:
                    //       Border.all(color: Color.fromARGB(255, 211, 226, 252)),
                    // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Image.asset(
                        //     "assets/images/mswr.jpg",
                        //     width: 40,
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Image.asset(
                        //     "assets/images/gama.jpg",
                        //     width: 40,
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Image.asset(
                        //     "assets/images/espa.png",
                        //     width: 40,
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Image.asset(
                        //     "assets/images/ssgl.png",
                        //     width: 40,
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/unicef.png",
                            width: 50,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/tama.png",
                            width: 50,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/crs.jpg",
                            width: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
