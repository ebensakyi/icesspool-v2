import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/transaction_history_page_controller.dart';

class TransactionHistoryPageView
    extends GetView<TransactionHistoryPageController> {
  const TransactionHistoryPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TransactionHistoryPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TransactionHistoryPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
