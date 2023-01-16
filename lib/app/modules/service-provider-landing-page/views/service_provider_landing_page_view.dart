import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/service_provider_landing_page_controller.dart';

class ServiceProviderLandingPageView
    extends GetView<ServiceProviderLandingPageController> {
  const ServiceProviderLandingPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ServiceProviderLandingPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ServiceProviderLandingPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
