import 'dart:developer';
import 'dart:io';

import 'package:internet_connection_checker/internet_connection_checker.dart';

class InternetChecker {
  static checkInternet() async {
    bool result = await InternetConnectionChecker().hasConnection;
    return result;
    // if (result == true) {
    //   print('YAY! Free cute dog pics!');
    // } else {
    //   print('No internet :( Reason:');
    //   print(InternetConnectionChecker().lastTryResults);
    // }
  }
}
