import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';

import '../../../../core/constants.dart';
import '../../../routes/app_pages.dart';

class RegistrationProvider extends GetConnect {
  final GetConnect connect = Get.put(GetConnect());

  // @override
  // void onInit() {
  //   httpClient.baseUrl = 'YOUR-API-URL';
  // }

  Future registerRegularUser(
      surname, otherNames, phoneNumber, email, password, selectedRegion) async {
    // FormData formData = FormData({
    //   'surname': surname,
    //   'otherNames': otherNames,
    //   'phone': phone,
    //   'email': email,
    //   'password': password,
    // });
    // inspect(formData);

    var data = {
      'surname': surname,
      'otherNames': otherNames,
      'phoneNumber': phoneNumber,
      'email': email,
      'password': password,
      "regionId": selectedRegion
    };
    // inspect(data);
    var url = Constants.BASE_URL + "/api/v1/auth/client/register";

    inspect(url);

    Response response = await connect.post(url, data);
    inspect(response);

    if (response.statusCode == 200) {
      Get.toNamed(Routes.OTP_PAGE);
      return response.body;
    } else {
      return null;
    }
  }

  Future<dynamic> registerServiceProvider(surname, otherNames, phoneNumber,
      email, password, company, region) async {
    // FormData formData = FormData({
    //   'surname': surname,
    //   'otherNames': otherNames,
    //   'phoneNumber': phoneNumber,
    //   'email': email,
    //   'password': password,
    //   'company': company,
    //   'region': region
    // });

    var data = {
      'surname': surname,
      'otherNames': otherNames,
      'phoneNumber': phoneNumber,
      'email': email,
      'password': password,
      'company': company,
      'region': region
    };

    Response response = await connect.post(
        Constants.BASE_URL + "/api/v1/auth/provider/register", data);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }
}
