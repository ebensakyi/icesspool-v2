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
        title: const Text('Account'),
        elevation: 1,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Account',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
