import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:icesspool_mobilev2/app/modules/about/views/about_view.dart';
import 'package:icesspool_mobilev2/app/modules/account/views/account_view.dart';

import '../../../../widgets/custom-animated-bottom-bar.dart';
import '../../make-request-page/views/make_request_page_view.dart';
import '../../transaction-history-page/views/transaction_history_page_view.dart';
import '../controllers/client_controller.dart';

class ClientLandingPageView extends GetView<ClientController> {
  const ClientLandingPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClientController>(builder: (controller) {
      return Scaffold(
          // appBar: AppBar(
          //   title: Text("${controller.index.value}"),
          //   centerTitle: true,
          // ),
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                MakeRequestView(),
                TransactionHistoryView(),
                AboutView(),
                AccountView(),
              ],
            ),
          ),
          bottomNavigationBar: CustomAnimatedBottomBar(
            containerHeight: 70,
            backgroundColor: Colors.grey.shade100,
            selectedIndex: controller.tabIndex,
            showElevation: true,
            itemCornerRadius: 24,
            curve: Curves.easeIn,
            onItemSelected: (index) => controller.changeTabIndex(index),
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                icon: Icon(Icons.add),
                title: Text('Request'),
                activeColor: Colors.indigoAccent,
                inactiveColor: controller.inactiveColor.value,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.history_outlined),
                title: Text('Transactions'),
                activeColor: Colors.blue.shade800,
                inactiveColor: controller.inactiveColor.value,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.help_outline),
                title: Text(
                  'About ',
                ),
                activeColor: Colors.blueGrey,
                inactiveColor: controller.inactiveColor.value,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.account_circle_outlined),
                title: Text('Account'),
                activeColor: Colors.blue,
                inactiveColor: controller.inactiveColor.value,
                textAlign: TextAlign.center,
              ),
            ],
          ));
    });
  }

  // Widget _buildBottomBar() {
  //   return CustomAnimatedBottomBar(
  //     containerHeight: 70,
  //     backgroundColor: Colors.white,
  //     selectedIndex: controller.currentIndex.value,
  //     showElevation: true,
  //     itemCornerRadius: 24,
  //     curve: Curves.easeIn,
  //     onItemSelected: (index) => controller.currentIndex.value = index,
  //     items: <BottomNavyBarItem>[
  //       BottomNavyBarItem(
  //         icon: Icon(Icons.apps),
  //         title: Text('Home'),
  //         activeColor: Colors.green,
  //         inactiveColor: controller.inactiveColor.value,
  //         textAlign: TextAlign.center,
  //       ),
  //       BottomNavyBarItem(
  //         icon: Icon(Icons.history_outlined),
  //         title: Text('Transactions'),
  //         activeColor: Colors.purpleAccent,
  //         inactiveColor: controller.inactiveColor.value,
  //         textAlign: TextAlign.center,
  //       ),
  //       BottomNavyBarItem(
  //         icon: Icon(Icons.message),
  //         title: Text(
  //           'Messages ',
  //         ),
  //         activeColor: Colors.pink,
  //         inactiveColor: controller.inactiveColor.value,
  //         textAlign: TextAlign.center,
  //       ),
  //       BottomNavyBarItem(
  //         icon: Icon(Icons.settings),
  //         title: Text('Settings'),
  //         activeColor: Colors.blue,
  //         inactiveColor: controller.inactiveColor.value,
  //         textAlign: TextAlign.center,
  //       ),
  //     ],
  //   );
  // }

  // Widget getBody() {
  //   List<Widget> pages = [
  //     MakeRequestView(),
  //     TransactionHistoryView(),
  //     SettingsView(),
  //     AboutView(),
  //   ];
  //   return IndexedStack(
  //     index: controller.currentIndex.value,
  //     children: pages,
  //   );
  // }
}
