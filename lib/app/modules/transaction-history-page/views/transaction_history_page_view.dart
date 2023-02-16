import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/transaction_history_page_controller.dart';

class TransactionHistoryView extends GetView<TransactionHistoryController> {
  const TransactionHistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transactions',
          style: TextStyle(
            color: Color.fromARGB(255, 5, 76, 134),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey.shade50,
        elevation: 1,
        // leading: Icon(
        //   Icons.arrow_back_sharp,
        //   color: Colors.indigo,
        // ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Text(
          'No Transactions',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
