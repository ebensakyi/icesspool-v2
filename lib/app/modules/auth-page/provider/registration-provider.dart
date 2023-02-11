import 'dart:developer';
import 'dart:math';

import 'package:get/get.dart';

import '../../../../core/constants.dart';

class RegistrationProvider extends GetConnect {
  final GetConnect connect = Get.put(GetConnect());

  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<dynamic> registerRegularUser(
      surname, otherNames, phone, email, password) async {
    FormData formData = FormData({
      'surname': surname,
      'otherNames': otherNames,
      'phone': phone,
      'email': email,
      'password': password,
    });

    Response response =
        await connect.post(Constants.BASE_URL + "/api/", formData);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }

  Future<dynamic> registerServiceProvider(
      surname, otherNames, phone, email, password, company, region) async {
    FormData formData = FormData({
      'surname': surname,
      'otherNames': otherNames,
      'phone': phone,
      'email': email,
      'password': password,
      'company': company,
      'region': region
    });

    Response response =
        await connect.post(Constants.BASE_URL + "/api/", formData);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }
}
