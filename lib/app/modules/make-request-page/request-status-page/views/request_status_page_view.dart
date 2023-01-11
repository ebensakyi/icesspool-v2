import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/request_status_page_controller.dart';

class RequestStatusPageView extends GetView<RequestStatusPageController> {
  const RequestStatusPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RequestStatusPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RequestStatusPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
