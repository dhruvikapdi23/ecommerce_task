import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_task/config/app_config.dart';
import 'package:ecommerce_task/model/product_model.dart';
import 'package:ecommerce_task/screens/product_list/product_controller.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController product = Get.isRegistered<ProductController>()
        ? Get.find<ProductController>()
        : Get.put(ProductController());
    return GetBuilder<ProductController>(builder: (_) {
      return Scaffold(
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Get.theme.scaffoldBackgroundColor,
          leading: const Icon(Icons.menu_open),
          actions: [const Icon(Icons.search).paddingSymmetric(horizontal: 20)],
        ),
        body: PagedGridView<int, ProductModel>(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            pagingController: product.pagingController,
            builderDelegate: PagedChildBuilderDelegate(
                itemBuilder: (context, item, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            item.images![0].baseUrl!,
                            height: 100,
                            width: MediaQuery.sizeOf(context).width,
                            cacheHeight: 500,
                            cacheWidth: 300,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) => CircularProgressIndicator(),
                          ),
                        ),
                        const VSpace(5),
                        Expanded(
                            child: Text(item.name!,
                                style: Get.textTheme.titleSmall!)),
                        const VSpace(5),
                        Text("${item.price!.formattedValue}",
                            style: Get.textTheme.titleSmall!)
                      ],
                    ).paddingOnly(bottom: 20)),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 170,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15)),
      );
    });
  }
}
