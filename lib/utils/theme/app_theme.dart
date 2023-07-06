import 'package:flutter/material.dart';
import 'package:rental_marks_business/utils/theme/colors.dart';

class AppFontSizes {
  static const double large = 20;
  static const double medium = 12;
  static const double small = 10;
  static const double smaller = 8;
}

class AppTheme {
  AppTheme._();
  static final lightTheme = ThemeData(
    // استخدم الألوان المحددة هنا
    primaryColor: AppColor.lightYellow,

    // استخدم أحجام الخط المحددة هنا
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: AppFontSizes.large),
      displayMedium: TextStyle(fontSize: AppFontSizes.medium),
      bodyLarge: TextStyle(fontSize: AppFontSizes.small),
      bodyMedium: TextStyle(fontSize: AppFontSizes.smaller),
    ),
    colorScheme: const ColorScheme(
      primary: AppColor.lightYellow,
      secondary: AppColor.lightRed,
      surface: AppColor.lightColorBG,
      background: AppColor.lightColorBG,
      error: AppColor.discountRedColor,
      onPrimary: AppColor.mainTextColor,
      onSecondary: AppColor.lightTextColor,
      onSurface: AppColor.mainTextColor,
      onBackground: AppColor.mainTextColor,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
  );
}
