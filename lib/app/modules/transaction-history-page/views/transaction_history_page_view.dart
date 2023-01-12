import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/transaction_history_page_controller.dart';

class TransactionHistoryView extends GetView<TransactionHistoryPageController> {
  const TransactionHistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Transactions'),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Text(
          'TransactionHistoryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
