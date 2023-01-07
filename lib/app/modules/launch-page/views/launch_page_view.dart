import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/launch_page_controller.dart';

class LaunchPageView extends GetView<LaunchPageController> {
  const LaunchPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LaunchPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LaunchPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
