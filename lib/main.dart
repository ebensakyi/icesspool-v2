import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';
import 'core/constants.dart';

main() async {
  await GetStorage.init();
  final box = GetStorage();
  var userType = box.read(Constants.USER_TYPE);
  if (userType == 3) {
    Get.offNamed(Routes.SERVICE_PROVIDER_LANDING_PAGE);
  }
  if (userType == 4) {
    Get.offNamed(Routes.CLIENT_LANDING_PAGE);
  }
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent,
  //   statusBarBrightness: Brightness.dark,
  // ));
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        // primarySwatch: Colors.indigo,
        textTheme: GoogleFonts.nanumPenScriptTextTheme()
            .apply(bodyColor: Colors.grey.shade700),
      ),
      title: "iCesspool",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
