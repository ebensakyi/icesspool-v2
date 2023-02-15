import 'dart:developer';

import 'package:get/get.dart';

import '../../../../core/constants.dart';

class PriceProvider extends GetConnect {
  final GetConnect connect = Get.put(GetConnect());

  // @override
  // void onInit() {
  //   httpClient.baseUrl = 'YOUR-API-URL';
  // }
  Future makeRequest(data) async {
    var url = Constants.BASE_URL + "/api/v1/client/make-request";

    Response response = await connect.post(url, data);

    if (response.statusCode == 200) {
      return response.bodyString.toString();
    } else {
      return [];
    }
  }
}
