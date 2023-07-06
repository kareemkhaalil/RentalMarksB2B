import 'package:flutter/material.dart';

class AppImage {
  static const String splashImagesPath = "lib/utils/images/splashScreen/";
  static const String imagesPath = "lib/utils/images/";
  static const String iconsPath = "lib/utils/icons/";
  static const String circle1 = "${splashImagesPath}C1.png";
  static const String circle2 = "${splashImagesPath}C2.png";
  static const String circle3 = "${splashImagesPath}C3.png";
  static const String logo = "${splashImagesPath}Logo.png";
  static const String logoWord = "${splashImagesPath}Logo Word.png";
  static const String logohorez = "${iconsPath}logo.svg";
  static const String shadow = "${splashImagesPath}shadow.png";
  static const String background = "${splashImagesPath}BG.png";
  static const String egyFlag = "${imagesPath}Egy_flag.png";
  static const String usFlag = "${imagesPath}Usa_flag.png";
  static const String authImage = "${imagesPath}auth.png";
  static const String userIcon = "${iconsPath}user.svg";
  static const String redArrow = "${iconsPath}redArrow.svg";
  static const String greenArrow = "${iconsPath}greenArrow.svg";
  static const String calls = "${iconsPath}calls.svg";
  static const String messages = "${iconsPath}messages.svg";
  static const String track = "${iconsPath}track_circle.svg";
  static const String messageCircle = "${iconsPath}message_circle.svg";
}

class AppIcons {
  AppIcons._();

  static const _kFontFam = 'SvgIcons';
  static const String? _kFontPkg = null;

  static const IconData messages =
      IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData insights =
      IconData(0xe802, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData settings =
      IconData(0xe803, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData heart =
      IconData(0xe804, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData home =
      IconData(0xe805, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData notification =
      IconData(0xe806, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData search_normal =
      IconData(0xe807, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData user =
      IconData(0xe808, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData vector =
      IconData(0xe80a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData requests =
      IconData(0xe80b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData products =
      IconData(0xe80c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
