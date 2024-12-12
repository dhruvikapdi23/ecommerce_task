
import 'package:ecommerce_task/config/app_config.dart';
import 'package:ecommerce_task/screens/category_list/category_list.dart';
import 'package:ecommerce_task/screens/product_list/product_list.dart';

class DashboardController extends GetxController {

  int currentTab = 0;

  //tab screens list
  final List<Widget> screens = [
    const CategoryList(),
    const ProductList()
  ];

//navigation tab change
  tabChange(int index) {
    currentTab = index;
    update();
  }


}
