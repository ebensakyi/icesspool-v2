import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/service_provider_controller.dart';

class ServiceProviderView extends GetView<ServiceProviderController> {
  const ServiceProviderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ServiceProviderView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ServiceProviderView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
