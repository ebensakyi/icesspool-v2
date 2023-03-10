import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.indigo.shade300,
            labelTextStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 12, fontWeight: FontWeight.w500))),
        child: Obx(() => NavigationBar(
                selectedIndex: controller.index.value,
                onDestinationSelected: (index) =>
                    controller.index.value = index,
                destinations: [
                  NavigationDestination(
                      icon: Icon(Icons.home_outlined), label: "xx"),
                  NavigationDestination(
                      icon: Icon(Icons.history), label: "xxx"),
                  NavigationDestination(
                      icon: Icon(Icons.settings_outlined), label: "xxx"),
                  NavigationDestination(
                      icon: Icon(Icons.info_outline), label: "xxx")
                ])),
      ),
    );
  }
}
