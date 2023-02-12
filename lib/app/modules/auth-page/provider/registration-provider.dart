import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

import 'package:get/get.dart';

import '../../../../core/constants.dart';

class RegistrationProvider extends GetConnect {
  final GetConnect connect = Get.put(GetConnect());
  var client = http.Client();

  // @override
  // void onInit() {
  //   httpClient.baseUrl = 'YOUR-API-URL';
  // }

  Future registerRegularUser(
      surname, otherNames, phoneNumber, email, password) async {
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
    };
    inspect(data);
    var uri = Uri.parse(Constants.BASE_URL + "/api/v1/auth/client/register");

    var response = await client.post(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'surname': surname,
        'otherNames': otherNames,
        'phoneNumber': phoneNumber,
        'email': email,
        'password': password,
      }),
    );
    log("res $response");

    inspect("response");
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }

  Future<dynamic> registerServiceProvider(surname, otherNames, phoneNumber,
      email, password, company, region) async {
    FormData formData = FormData({
      'surname': surname,
      'otherNames': otherNames,
      'phoneNumber': phoneNumber,
      'email': email,
      'password': password,
      'company': company,
      'region': region
    });

    Response response = await connect.post(
        Constants.BASE_URL + "/api/v1/auth/provider/register", formData);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }
}
