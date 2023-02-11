import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:icesspool_mobilev2/widgets/home-button.dart';

import '../controllers/service_provider_landing_page_controller.dart';

class ServiceProviderLandingPageView
    extends GetView<ServiceProviderLandingPageController> {
  const ServiceProviderLandingPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Service Provider'),
          centerTitle: true,
        ),
        body: GridView.count(crossAxisCount: 2, // number of columns
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: HomeButton(
                  assetImagePath: 'assets/images/request.png',
                  label: 'New Requests',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: HomeButton(
                  assetImagePath: 'assets/images/list.png',
                  label: 'Completed Requests',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: HomeButton(
                  assetImagePath: 'assets/images/earning.png',
                  label: 'Earning',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: HomeButton(
                  assetImagePath: 'assets/images/man.png',
                  label: 'Profile',
                ),
              )
            ]));
  }
}
