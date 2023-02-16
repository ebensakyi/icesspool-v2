import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        title: const Text('Settings'),
        elevation: 1,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Settings',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
