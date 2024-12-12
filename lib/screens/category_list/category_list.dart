import 'package:ecommerce_task/config/app_config.dart';
import 'package:ecommerce_task/extension/widget_extension.dart';
import 'package:ecommerce_task/model/category_model.dart';
import 'package:ecommerce_task/screens/category_list/category_controller.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryController category = Get.put(CategoryController());
    return GetBuilder<CategoryController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Get.theme.scaffoldBackgroundColor,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: category.categoryList.length,
                itemBuilder: (context, index) {
                  CategoryModel c = category.categoryList[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(c.catName!, style: Get.theme.textTheme.displayLarge),
                      const VSpace(10),
                      if (c.categoriesArray != null &&
                          c.categoriesArray!.isNotEmpty)
                        GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisExtent: 45,
                                  mainAxisSpacing: 15,
                                  crossAxisSpacing: 15),
                          itemBuilder: (context, i) {
                            CategoryModel d = c.categoriesArray![i];
                            return Text(
                              d.catName!,
                              overflow: TextOverflow.ellipsis,
                              style: Get.theme.textTheme.bodyLarge!
                                  .copyWith(fontSize: 15,color:  category.selectedCategory.contains(d.categoryValue)
                                  ? AppColors.whiteColor: AppColors.blackColor),
                            )
                                .alignment(Alignment.center)
                                .paddingSymmetric(vertical: 5)
                                .decorated(
                                    color: category.selectedCategory.contains(d.categoryValue)
                                        ? AppColors.green
                                        : AppColors.greyColor,
                                    borderRadius: BorderRadius.circular(5))
                                .inkWell(
                                    onTap: () => category.selectCategoryTap(d,c));
                          },
                          shrinkWrap: true,
                          itemCount: c.categoriesArray!.length,
                        ).paddingOnly(bottom: 25)
                    ],
                  );
                },
              )
            ],
          ),
        ),
      );
    });
  }
}
