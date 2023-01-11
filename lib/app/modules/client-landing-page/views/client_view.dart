import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/client_controller.dart';

class ClientView extends GetView<ClientController> {
  const ClientView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("${controller.index.value}"),
      //   centerTitle: true,
      // ),
      body: Obx(
          () => Container(child: controller.screens[controller.index.value])),
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
                      icon: Icon(Icons.new_label_outlined),
                      label: "Make sRequest"),
                  NavigationDestination(
                      icon: Icon(Icons.history), label: "Transactions"),
                  NavigationDestination(
                      icon: Icon(Icons.settings_outlined), label: "Settings"),
                  NavigationDestination(
                      icon: Icon(Icons.info_outline), label: "About")
                ])),
      ),
    );
  }
}
