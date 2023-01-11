import 'package:get/get.dart';

import '../controllers/transaction_history_page_controller.dart';

class TransactionHistoryPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransactionHistoryPageController>(
      () => TransactionHistoryPageController(),
    );
  }
}
