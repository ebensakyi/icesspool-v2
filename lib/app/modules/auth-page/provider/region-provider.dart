import 'dart:developer';

import 'package:get/get.dart';
import 'package:icesspool_mobilev2/app/modules/auth-page/model/Region.dart';
import 'package:icesspool_mobilev2/app/modules/make-request-page/model/Pricing.dart';

import '../../../../core/constants.dart';

class RegionProvider extends GetConnect {
  final GetConnect connect = Get.put(GetConnect());

  Future<List<Region>> getRegions() async {
    // var url = Constants.BASE_URL + "/api/v1/admin/regions";

    // Response response = await connect.get(url);

    // if (response.statusCode == 200) {
    //   return pricingFromJson(response.bodyString.toString());
    // } else {
    //   return [];
    // }
    var rg = [
      {"id": 1, "name": "Greater Accra"},
      {"id": 2, "name": "Northern Region"}
    ];
    return regionFromJson(rg.toString());
  }
}
