import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  const AboutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text(
          'About',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
