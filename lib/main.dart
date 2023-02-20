import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'app/routes/app_pages.dart';
import 'core/constants.dart';
import 'firebase_options.dart';

// main() async {
//   await GetStorage.init();
//   final box = GetStorage();

//   var userType = box.read(Constants.USER_TYPE);

//   // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//   //   statusBarColor: Colors.transparent,
//   //   statusBarBrightness: Brightness.dark,
//   // ));
//   runApp(
//     GetMaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.indigo,
//         //   textTheme: GoogleFonts.anekGujaratiTextTheme()
//         //       .apply(bodyColor: Colors.grey.shade700),
//       ),
//       title: "iCesspool",
//       debugShowCheckedModeBanner: false,
//       initialRoute: userType == 3
//           ? AppPages.INITIAL2
//           : userType == 4
//               ? AppPages.INITIAL1
//               : AppPages.INITIAL,
//       getPages: AppPages.routes,
//     ),
//   );
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // runApp(
  //   DevicePreview(
  //     enabled: !kReleaseMode,
  //     builder: (context) => MyApp(), // Wrap your app
  //   ),
  // );

  runApp(MyApp());
}

//I6KfL0Gk
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // final box = GetStorage();

  var userType = GetStorage().read(Constants.USER_TYPE);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          initialRoute: userType == 3
              ? AppPages.INITIAL2
              : userType == 4
                  ? AppPages.INITIAL1
                  : AppPages.INITIAL,
          title: 'iCesspool',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.indigo,
            // fontFamily: 'Roboto',
            textTheme: GoogleFonts.anekGujaratiTextTheme()
                .apply(bodyColor: Colors.grey.shade700),
          ),
          getPages: AppPages.routes,
        );
      },
    );
  }
}
