import 'package:get/get.dart';
import 'package:icesspool_mobilev2/app/modules/settings/controllers/settings_controller.dart';
import 'package:icesspool_mobilev2/app/modules/transaction-history-page/controllers/transaction_history_page_controller.dart';

import '../../make-request-page/controllers/make_request_page_controller.dart';
import '../controllers/client_controller.dart';

class ClientBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClientController>(
      () => ClientController(),
    );

    Get.lazyPut<MakeRequestPageController>(
      () => MakeRequestPageController(),
    );

    Get.lazyPut<TransactionHistoryController>(
      () => TransactionHistoryController(),
    );

    Get.lazyPut<SettingsController>(
      () => SettingsController(),
    );
  }
}
