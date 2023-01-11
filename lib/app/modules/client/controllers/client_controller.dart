import 'package:get/get.dart';
import 'package:icesspool_mobilev2/app/modules/client/views/about_view.dart';
import 'package:icesspool_mobilev2/app/modules/client/views/settings_view.dart';
import 'package:icesspool_mobilev2/app/modules/client/views/transactions_view.dart';

import '../make-request-page/views/make_request_page_view.dart';
import '../views/make_request_view.dart';

class ClientController extends GetxController {
  final index = 0.obs;
  final screens = [
    TransactionsView(),
    MakeRequestView(),
    SettingsView(),
    AboutView()
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
