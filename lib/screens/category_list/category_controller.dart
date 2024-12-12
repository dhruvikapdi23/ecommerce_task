import 'dart:developer';

import 'package:ecommerce_task/config/app_config.dart';
import 'package:ecommerce_task/model/category_model.dart';
import 'package:ecommerce_task/screens/product_list/product_controller.dart';

import '../../services/api_service.dart.dart';

class CategoryController extends GetxController {
  List<CategoryModel> categoryList = [];
  List selectedCategory =[];
  String? type;

  @override
  void onInit() {
    // TODO: implement onInit
    getCategoryList();
    super.onInit();
  }

  getCategoryList() async {
    try {
      await apiServices
          .commonApi(
              "${apiName.categoryList}?lang=en&country=us", [], ApiType.get)
          .then((value) {
        if (value.isSuccess!) {
          List list = value.data;
          log("Aaa :${value.data}");
          categoryList = list.map((e) => CategoryModel.fromJson(e)).toList();
          for (var d in categoryList) {
            List<CategoryModel> subCategory = [];
            if (d.categoriesArray != null) {
              for (var a in d.categoriesArray!) {
                if (a.tagCodes != null) {
                  if (a.categoriesArray != null) {
                    for (var c in a.categoriesArray!) {
                      log("ABC :${d.catName} -  ${c.catName} ");
                      if (c.tagCodes != null) {
                        subCategory.add(c);
                      }
                    }
                  }
                }
              }

              for (var data in subCategory) {
                int index = d.categoriesArray!
                    .indexWhere((element) => element.catName == data.catName);
                if (index == -1) {
                  d.categoriesArray!.add(data);
                }
              }
            }
          }

          update();
        } else {
          update();
        }
      });
    } catch (e) {
      log("EEEE getCategoryList : $e");
      update();
    }
  }

  selectCategoryTap(CategoryModel cat,CategoryModel main) {
    if (selectedCategory.contains(cat.categoryValue)) {
      selectedCategory.remove(cat.categoryValue);
    } else {
      selectedCategory.add(cat.categoryValue);
    }
    type= cat.tagCodes != null && cat.tagCodes!.isNotEmpty? cat.tagCodes![0]:cat.categoryValue;
    update();
    getProduct();
  }

  getProduct() {
    ProductController productController = Get.isRegistered<ProductController>()
        ? Get.find<ProductController>()
        : Get.put(ProductController());
    productController.productList =[];
    productController.pagingController.itemList =[];
    productController.getProduct(0);
  }
}
