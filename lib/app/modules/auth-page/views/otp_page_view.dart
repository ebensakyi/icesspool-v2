import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:icesspool_mobilev2/app/modules/auth-page/controllers/auth_page_controller.dart';
import 'package:icesspool_mobilev2/themes/colors.dart';
import 'package:icesspool_mobilev2/widgets/button.dart';
import 'package:icesspool_mobilev2/widgets/otp-box.dart';
import 'package:icesspool_mobilev2/widgets/small-button.dart';

import '../../../routes/app_pages.dart';

class OtpPageView extends GetView<AuthPageController> {
  const OtpPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('OtpView'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: MyColors.primary1,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SvgPicture.asset(
            "assets/images/otp.svg",
            width: 200,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Verification",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Enter your OTP code here",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 1,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OtpBox(
                        controller: controller.num1Controller,
                      ),
                      OtpBox(controller: controller.num2Controller),
                      OtpBox(controller: controller.num3Controller),
                      OtpBox(controller: controller.num4Controller),
                    ],
                  ),
                  SmallButton(
                    onPressed: () {
                      // Get.toNamed(Routes.CLIENT_LANDING_PAGE);
                      var res = controller.verifyOtp();
                      if (res == 1) Get.toNamed(Routes.CLIENT_LANDING_PAGE);
                    },
                    showLoading: false,
                    label: "Verify",
                    backgroundColor: MyColors.primary1,
                  ),
                ],
              ),
            ),
          ),
          Text("Didn't receive any code?"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: InkWell(
                child: Text(
                  "Resend code",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: MyColors.primary2),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
