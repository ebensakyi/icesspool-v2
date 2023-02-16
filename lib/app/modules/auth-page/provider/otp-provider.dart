import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';

import '../../../../core/constants.dart';
import '../../../routes/app_pages.dart';

class OtpProvider extends GetConnect {
  final GetConnect connect = Get.put(GetConnect());

  // Future loginRegularUser(phoneNumber, password) async {

  //   var data = {
  //     'surname': surname,
  //     'otherNames': otherNames,
  //     'phoneNumber': phoneNumber,
  //     'email': email,
  //     'password': password,
  //   };
  //   inspect(data);
  //   var url = Constants.BASE_URL + "/api/v1/auth/client/register";

  //   Response response = await connect.post(url, data);
  //   inspect("res $response");

  //   if (response.statusCode == 200) {
  //     Get.toNamed(Routes.OTP_PAGE);
  //     return response.body;
  //   } else {
  //     return null;
  //   }
  // }

  Future<dynamic> verifyOtpProvider(phoneNumber, code) async {
    // FormData formData = FormData({
    //   'surname': surname,
    //   'otherNames': otherNames,
    //   'phoneNumber': phoneNumber,
    //   'email': email,
    //   'password': password,
    //   'company': company,
    //   'region': region
    // });

    var data = {'phoneNumber': phoneNumber, 'code': code};
    inspect(data);

    Response response = await connect.post(
        Constants.BASE_URL + "/api/v1/auth/client/verify-token", data);
    inspect(response);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }
}
