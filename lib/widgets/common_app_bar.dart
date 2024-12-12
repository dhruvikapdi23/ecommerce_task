import 'package:ecommerce_task/config/app_config.dart';
import 'package:ecommerce_task/extension/widget_extension.dart';

class CommonAppBar extends StatelessWidget  implements PreferredSizeWidget{
  final String? title,versionCode;
  final bool isBack;
  final List<Widget>? actions;
  final GestureTapCallback? onTap;
  const CommonAppBar({super.key, this.title,this.isBack =false, this.actions, this.versionCode, this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 90,
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
      leadingWidth: AppDimens.dimen100,
      backgroundColor: Get.theme.scaffoldBackgroundColor,
      leading: isBack ?SvgPicture.asset(AppSvg.arrowLeft,fit: BoxFit.scaleDown, colorFilter:
      ColorFilter.mode(Get.theme.iconTheme.color!, BlendMode.srcIn)).inkWell(onTap: onTap??  ()=>Get.back()):null,
      actions:actions,
      title: Column(
        children: [
          Text(title!.tr,
              style: Get.theme.textTheme.displaySmall!
                  .copyWith(fontSize: FontDimen.dimen22)),
          if(versionCode != null)
          Text(versionCode!,
              style: Get.theme.textTheme.displayMedium!.copyWith(fontSize: 14,color: Get.theme.primaryColor)).paddingOnly(top: AppDimens.dimen5),
        ],
      ),
    );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(90);
}
