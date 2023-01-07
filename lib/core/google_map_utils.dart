// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

class GoogleMapUtils {
// Future<void> _launchUrl() async {
//   // const url ='https://www.google.com/maps/dir/?api=1&origin=43.7967876,-79.5331616&destination=43.5184049,-79.8473993&waypoints=43.1941283,-79.59179|43.7991083,-79.5339667|43.8387033,-79.3453417|43.836424,-79.3024487&travelmode=driving&dir_action=navigate';
//   const url ='https://www.google.com/maps/dir/?api=1&destination=43.5184049,-79.8473993&travelmode=driving&dir_action=navigate';

//   if (!await launchUrl(url)) {
//     throw 'Could not launch $_url';
//   }
// }

  static launchGoogleMap(url) async {
    //if (await launchUrl(url)) {
    await launchUrl(url);
    // } else {
    //   throw 'Could not launch $url';
    // }
  }

  static void navigateTo(double lat, double lng) async {
    var uri = Uri.parse("google.navigation:q=$lat,$lng&mode=d");
    if (await canLaunch(uri.toString())) {
      await launch(uri.toString());
    } else {
      throw 'Could not launch ${uri.toString()}';
    }
  }
}
