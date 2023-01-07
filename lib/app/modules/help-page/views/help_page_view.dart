import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/help_page_controller.dart';

class HelpPageView extends GetView<HelpPageController> {
  const HelpPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HelpPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HelpPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
