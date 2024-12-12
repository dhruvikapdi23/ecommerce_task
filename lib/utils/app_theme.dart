import 'package:ecommerce_task/utils/app_colors.dart';
import 'package:ecommerce_task/utils/app_dimen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final dark = ThemeData.dark().copyWith(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.blackColor,
      iconTheme: const IconThemeData(color: AppColors.whiteColor),
      cardColor: AppColors.cardDarkColor,
      hintColor: AppColors.hintColor,
      dividerColor: AppColors.dividerColor,

      textTheme: TextTheme(
        //use

        displayLarge: getTextStyle(AppColors.whiteColor, FontDimen.dimen24,
            fontWeight: FontWeight.w700),
        //use
        displayMedium: getTextStyle(AppColors.whiteColor, FontDimen.dimen18,
            fontWeight: FontWeight.w500),
        //use
        displaySmall: getTextStyle(AppColors.whiteColor, FontDimen.dimen20,
            fontWeight: FontWeight.w600),
        headlineLarge: getTextStyle(
          AppColors.whiteColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen18,
        ),
        headlineMedium: getTextStyle(
          AppColors.whiteColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen18,
        ),
        //use
        headlineSmall: getTextStyle(
          AppColors.whiteColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen16,
        ),
        titleLarge: getTextStyle(
          AppColors.whiteColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen16,
        ),
        titleMedium: getTextStyle(
          AppColors.whiteColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen16,
        ),
        //use
        titleSmall: getTextStyle(
          AppColors.whiteColor,
          fontWeight: FontWeight.w300,
          FontDimen.dimen15,
        ),
        labelLarge: getTextStyle(
          AppColors.whiteColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen16,
        ),
        labelMedium: getTextStyle(
          AppColors.whiteColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen14,
        ),
        labelSmall: getTextStyle(AppColors.whiteColor, FontDimen.dimen16,
            fontWeight: FontWeight.w700),
        bodyLarge: getTextStyle(
          AppColors.whiteColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen12,
        ),
        bodyMedium: getTextStyle(
          AppColors.whiteColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen10,
        ),
        bodySmall: getTextStyle(
          AppColors.whiteColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen12,
        ),
      ));

  static final light = ThemeData.light().copyWith(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.whiteColor,
      iconTheme: const IconThemeData(color: AppColors.textColor),
      cardColor: AppColors.cardColor,
      hintColor: AppColors.hintColor,

      dividerColor: AppColors.dividerColor,

      textTheme: TextTheme(
        //use
        displayLarge: getTextStyle(AppColors.textColor, FontDimen.dimen24,
            fontWeight: FontWeight.w700),
        //use
        displayMedium: getTextStyle(AppColors.textColor, FontDimen.dimen18,
            fontWeight: FontWeight.w500),
        //use
        displaySmall: getTextStyle(AppColors.textColor, FontDimen.dimen20,
            fontWeight: FontWeight.w600),
        headlineLarge: getTextStyle(
          AppColors.textColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen18,
        ),
        headlineMedium: getTextStyle(
          AppColors.textColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen18,
        ),
        //use
        headlineSmall: getTextStyle(
          AppColors.textColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen16,
        ),
        titleLarge: getTextStyle(
          AppColors.textColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen16,
        ),
        titleMedium: getTextStyle(
          AppColors.textColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen16,
        ),
        //use
        titleSmall: getTextStyle(
            AppColors.textColor,
            fontWeight: FontWeight.w300,
            FontDimen.dimen15),
        labelLarge: getTextStyle(
          AppColors.textColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen16,
        ),
        labelMedium: getTextStyle(
          AppColors.textColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen14,
        ),
        labelSmall: getTextStyle(AppColors.textColor, FontDimen.dimen16,
            fontWeight: FontWeight.w700),
        bodyLarge: getTextStyle(
          AppColors.textColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen12,
        ),
        bodyMedium: getTextStyle(
          AppColors.textColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen10,
        ),
        bodySmall: getTextStyle(
          AppColors.textColor,
          fontWeight: FontWeight.w400,
          FontDimen.dimen12,
        ),
      ));
}

TextStyle getTextStyle(Color color, double size,
        {FontWeight? fontWeight, String? fontFamily}) =>
    GoogleFonts.mulish(
      color: color,
      fontSize: size,
      fontWeight: fontWeight ?? FontWeight.w400,
      textStyle: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: fontWeight ?? FontWeight.w400,
      ),
    );
