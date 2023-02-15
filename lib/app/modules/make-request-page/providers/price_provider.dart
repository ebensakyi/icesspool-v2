import 'dart:developer';

import 'package:get/get.dart';
import 'package:icesspool_mobilev2/app/modules/make-request-page/model/Pricing.dart';

import '../../../../core/constants.dart';

class PriceProvider extends GetConnect {
  final GetConnect connect = Get.put(GetConnect());

  // @override
  // void onInit() {
  //   httpClient.baseUrl = 'YOUR-API-URL';
  // }
  Future<List<Pricing>> getToiletRequestPrices() async {
    var url = Constants.BASE_URL + "/api/v1/admin/pricing/toilet-request";

    Response response = await connect.get(url);
    inspect(response.bodyString);

    if (response.statusCode == 200) {
      return pricingFromJson(response.bodyString.toString());
    } else {
      return [];
    }
  }
}
