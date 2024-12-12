import 'dart:developer';

import 'package:ecommerce_task/config/app_config.dart';
import 'package:ecommerce_task/model/category_model.dart';
import 'package:ecommerce_task/model/product_model.dart';
import 'package:ecommerce_task/screens/category_list/category_controller.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../services/api_service.dart.dart';

class ProductController extends GetxController {
  List<CategoryModel> categoryList = [];
  List<ProductModel> productList = [];
  static const pageSize = 10;

  PagingController<int, ProductModel> pagingController =
      PagingController(firstPageKey: 0);

  @override
  void onInit() {
    // TODO: implement onInit
    pagingController.addPageRequestListener((pageKey) {
      getProduct(pageKey);
    });
    super.onInit();
  }

  getProduct(int pageKey) async {
    CategoryController cat = Get.find<CategoryController>();
    String list = cat.type ?? "";
    if (list == "") {
      list = "ladies";
    } else {
      list = cat.type!;
    }
    log("list1:$list");
    try {
      await apiServices
          .commonApi(
              "${apiName.product}?lang=en&country=us&categories=$list&currentpage=$pageKey&pagesize=$pageSize&",
              [],
              ApiType.get)
          .then((value) {
        if (value.isSuccess!) {
          List newItems = value.data['results'];

          productList = newItems.map((e) => ProductModel.fromJson(e)).toList();

          final isLastPage = productList.length < pageSize;
          if (isLastPage) {
            pagingController.appendLastPage(productList);
          } else {
            final nextPageKey = pageKey + productList.length;
            pagingController.appendPage(productList, nextPageKey);
          }

          update();
          log("list :${pagingController.itemList!.length}");
        } else {
          update();
        }
      });
    } catch (e) {
      log("EEEE getProduct : $e");
      update();
    }
  }
}
