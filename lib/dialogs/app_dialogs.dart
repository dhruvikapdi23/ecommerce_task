import 'dart:ui';

import 'package:ecommerce_task/config/app_config.dart';

class AppDialogs {
  static successSnackBar(String msg) {
    if (msg.isNotEmpty) {
      return ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(
            backgroundColor: AppColors.green,
            content: Text(
              msg,
              style: TextStyle(
                  fontSize: FontDimen.dimen14, color: AppColors.whiteColor)
            ))
      );
    }
  }

  static errorSnackBar(String msg) {
    if (msg.isNotEmpty) {
      return ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(
            backgroundColor: AppColors.red,
            content: Text(
              msg,
              style: TextStyle(
                  fontSize: FontDimen.dimen14, color: AppColors.whiteColor),
            )),
      );
    }
  }

  static showProcess() {
    return Get.dialog(
      barrierDismissible: false,
      AlertDialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          content: PopScope(canPop: false, child: AppWidgets.getLoadingView())),
    );
  }

  static showCommonDialog(Widget child,
      {bool isbottom = false, Function()? onTap}) {
    showDialog(
      barrierDismissible: false,
      context: Get.context!,
      builder: (BuildContext context) {
        return PopScope(
          canPop: false,
          child: Dialog(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)), //this right here
            child: Container(
                decoration: AppDecoration.cardDecoration(),
                padding: EdgeInsets.all(AppDimens.dimen20),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    if (!isbottom)
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                            onTap: () => Get.back(),
                            child: Icon(
                              Icons.close,
                              color: Get.theme.dividerColor,
                            )),
                      ),
                    child,
                    if (isbottom)
                      Row(
                        children: [
                          Expanded(
                              child: appButton(
                            AppStrings.no,
                            height: AppDimens.dimen50,
                            color: AppColors.blackColor,
                            textColor: AppColors.primaryColor,
                            onTap: () => Get.back(),
                          ).paddingSymmetric(horizontal: AppDimens.dimenW40)),
                          Expanded(
                              child: appButton(
                            AppStrings.yes,
                            height: AppDimens.dimen50,
                            onTap: () {
                              Get.back();
                              onTap?.call();
                            },
                          ).paddingSymmetric(horizontal: AppDimens.dimenW40)),
                        ],
                      )
                  ],
                )),
          ),
        );
      },
    );
  }

  static showSuccessBottomSheet(Function() onTap, Widget? child) =>
      showModalBottomSheet<void>(
        context: Get.context!,
        isDismissible: false,
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
          side: BorderSide(color: Get.theme.cardColor)
        ),
        backgroundColor: Get.theme.cardColor,
        barrierColor: Color(0xFF8E8E8E).withOpacity(.30),
elevation: 5,
        builder: (BuildContext context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                child!,
              ],
            ).paddingSymmetric(
                vertical: AppDimens.dimen20, horizontal: AppDimens.dimen42),
          );
        },
      );
}
