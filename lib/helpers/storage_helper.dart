import 'dart:developer';

import 'package:ecommerce_task/config/app_config.dart';

class StorageHelper {
  get storage => GetStorage();

  set isDarkMode(bool value) => storage.write("isDark", value);

  bool? get isDark => storage.read('isDark');

  dynamic get bibleVersion => storage.read("bibleVersion");

  String? get language => storage.read("language");

  removeData() async {
    await storage.remove('isLoggedIn');
    await Get.deleteAll(force: true);
  }

  set isLoggedIn(bool value) => storage.write("isLoggedIn", value);

  bool get isLoggedIn => storage.read('isLoggedIn') ?? false;



// set authData(AuthData data) => storage.write("authData", json.encode(data));

// AuthData get authData {
//   final parsed = json.decode(storage.read("authData") ?? "{}");
//   return AuthData.fromJson(parsed);
// }
}
