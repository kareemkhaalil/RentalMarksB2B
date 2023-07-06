// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

class AppColor {
  static const Color lightYellow = Color(0xFFFEF593);
  static const Color darkerYellow = Color(0xFFFFEC23);
  static const Color authBtn = Color(0xffFAE95B);
  static const Color lightColorBG = Color(0xffF8F6F2);
  static const Color lightRed = Color(0xFFFB9168);
  static const Color darkerRed = Color(0xFFFF4E6F);
  static const Color mainTextColor = Color(0xff000000);
  static const Color lightTextColor = Color(0xff261A13);
  static const Color discountRedColor = Color(0xFFFF3535);
  static const Color blueButtonText = Color(0xFF1A66F6);
  static const Color white = Color(0xffFFFFFF);
  static const Color gray = Color(0xff666666);
  static const LinearGradient grad = LinearGradient(
    colors: [darkerRed, lightRed],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

//linear-gradient(142.43deg, #FF4E6F 25.46%, #FB8E68 78.26%);
class AppFontSizes {
  static const large = 20;
  static const medium = 12;
  static const small = 10;
  static const smaller = 8;
}
