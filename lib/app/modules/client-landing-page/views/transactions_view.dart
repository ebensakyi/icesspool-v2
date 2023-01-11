import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/client_controller.dart';

class TransactionsView extends GetView<ClientController> {
  const TransactionsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Transactions'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TransactionsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
