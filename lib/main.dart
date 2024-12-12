import 'dart:io';

import 'package:ecommerce_task/routes/route_method.dart';
import 'package:ecommerce_task/screens/category_list/category_list.dart';
import 'package:ecommerce_task/screens/dashboard/dashboard.dart';

import 'config/app_config.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  await AppHelper.init();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        getPages: AppRoute().getPages,
        locale: const Locale('en', 'US'),
        fallbackLocale: const Locale('en', 'US'),

        themeMode: StorageHelper().isDark == null
            ? ThemeMode.system
            : (StorageHelper().isDark ?? Get.isDarkMode)
                ? ThemeMode.dark
                : ThemeMode.light,
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
                textScaler: TextScaler.linear(FontDimen.textScaleFactor)),
            child: SafeArea(
              top: false,
              bottom: Platform.isIOS ? false : true,
              child: child!,
            ),
          );
        },
        home: const Dashboard());
  }
}
