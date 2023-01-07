import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/region_selection_page_controller.dart';

class RegionSelectionPageView extends GetView<RegionSelectionPageController> {
  const RegionSelectionPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegionSelectionPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RegionSelectionPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
