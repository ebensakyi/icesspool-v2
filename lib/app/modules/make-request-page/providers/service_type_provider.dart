import 'dart:developer';

import 'package:get/get.dart';

import '../../../../core/constants.dart';
import '../model/ServiceType.dart';

class ServiceTypeProvider extends GetConnect {
  final GetConnect connect = Get.put(GetConnect());

  // @override
  // void onInit() {
  //   httpClient.baseUrl = 'YOUR-API-URL';
  // }

  Future<List<ServiceType>> getServices() async {
    var url = Constants.BASE_URL + "/api/v1/admin/service-type";

    Response response = await connect.get(url);

    var res = serviceTypeFromJson(response.body);
    inspect(res);
    if (response.statusCode == 200) {
      log("here");
      return serviceTypeFromJson(response.body);
    } else {
      return [];
    }
  }
}
