import 'dart:developer';

import 'package:get/get.dart';

import '../../../../core/constants.dart';
import '../model/RequestType.dart';

class WaterRequestTypeProvider extends GetConnect {
  final GetConnect connect = Get.put(GetConnect());

  // @override
  // void onInit() {
  //   httpClient.baseUrl = 'YOUR-API-URL';
  // }
  Future<List<RequestType>> getRequests() async {
    var url = Constants.BASE_URL + "/api/v1/admin/water-request-type";

    Response response = await connect.get(url);

    if (response.statusCode == 200) {
      return requestTypeFromJson(response.bodyString.toString());
    } else {
      return [];
    }
  }
}
