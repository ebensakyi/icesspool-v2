import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';
import 'core/constants.dart';

main() async {
  await GetStorage.init();

  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent,
  //   statusBarBrightness: Brightness.dark,
  // ));
  runApp(
    GetMaterialApp(
      theme: ThemeData(
          // primarySwatch: Colors.indigo,
          // textTheme: GoogleFonts.lato()
          // .apply(bodyColor: Colors.grey.shade700),

          ),
      title: "iCesspool",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
