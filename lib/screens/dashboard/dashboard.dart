import 'package:ecommerce_task/config/app_config.dart';
import 'package:ecommerce_task/screens/dashboard/dashboard_controller.dart';

import '../bottom_nav_bar/bottom_nav_bar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    DashboardController dash = Get.put(DashboardController());
    return GetBuilder<DashboardController>(builder: (_) {
      return Scaffold(
        bottomNavigationBar: BottomNavBar(
          currentIndex: dash.currentTab,
          onTap: (int index) {
            dash.currentTab = index;
            dash.update();
          },
        ),
        body: dash.screens[dash.currentTab],
      );
    });
  }
}
