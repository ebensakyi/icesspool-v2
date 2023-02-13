import 'dart:developer';

import 'package:get/get.dart';

import '../../../../core/constants.dart';
import '../model/RequestType.dart';

class RequestTypeProvider extends GetConnect {
  final GetConnect connect = Get.put(GetConnect());

  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future getRequests() async {
    var url = Constants.BASE_URL + "/api/v1/admin/request-type";

    Response response = await connect.get(url);

    inspect(response);
    if (response.statusCode == 200) {
      return requestTypeFromJson(response.body);
    } else {
      return null;
    }
  }
}
