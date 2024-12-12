import 'dart:developer';
import 'dart:io';

import 'package:ecommerce_task/config/app_config.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:intl/intl.dart';

class AppFunctions {
  // static String timestampToDateTime(String timestamp) {
  //   var date = DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp) * 1000);
  //   final f = DateFormat('dd MMM yyyy hh:mm a');
  //   return f.format(date).toString();
  // }

  static Future<bool> checkInternet() async {
    final List<ConnectivityResult> connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.mobile)) {
      return true;
    } else if (connectivityResult.contains(ConnectivityResult.wifi)) {
      return true;
    } else if (connectivityResult.contains(ConnectivityResult.other)) {
      return true;
    }
    return false;
  }

  Future<bool> isNetworkConnection() async {
    var connectivityResult = await Connectivity()
        .checkConnectivity(); //Check For Wifi or Mobile data is ON/OFF
    if (connectivityResult.contains(ConnectivityResult.none)) {
      return false;
    } else {
      final result = await InternetAddress.lookup(
          'google.com'); //Check For Internet Connection
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    }
  }


}

enum FontFamilyEnum {
  poppins,
  mulish,
  sFProText,
  montserrat,
  segoeUI,
  openSans,
  nunito,
  inter,
  gothicUI,
  pTSans,
  sofiaSans
}
