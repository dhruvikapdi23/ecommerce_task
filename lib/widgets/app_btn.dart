import 'package:ecommerce_task/config/app_config.dart';
import 'package:ecommerce_task/extension/widget_extension.dart';

Widget appButton(String title,
    {Color? color,
    Color? textColor,
    double? width,
    double? height,
    Function()? onTap,
    BorderRadiusGeometry? borderRadius,

    bool isShowBottom = true}) {
  return SizedBox(
    width: width ?? double.infinity,
    height: height ?? AppDimens.dimen55,
    child: ElevatedButton(
      onPressed: onTap,

      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ??
                BorderRadius.circular(AppDimens.dimen8), // <-- Radius
          ),
          disabledBackgroundColor: color ?? AppColors.primaryColor,
          backgroundColor: color ?? AppColors.primaryColor),
      child: Text(
        title,
        style: Get.theme.textTheme.displaySmall!
            .copyWith(color: AppColors.whiteColor),
      )
    ),
  );
}
