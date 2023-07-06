// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:rental_marks_business/utils/theme/colors.dart';

class AuthTextForm extends StatelessWidget {
  double? height;
  double? width;
  IconData? icon;
  Widget? suffixIcon;
  String? text;
  double? fontSize;
  TextEditingController? controller;
  TextInputType? type;
  bool? obx;

  AuthTextForm({
    Key? key,
    this.height,
    this.width,
    this.icon,
    this.suffixIcon,
    this.text,
    this.fontSize,
    this.controller,
    this.type,
    this.obx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height! * 46,
        // screenSize.height * AppSizes.oneHeightPixel * 46,
        width: width! * 370,
        // screenSize.width * AppSizes.oneWidthPixel * 370,
        child: TextFormField(
          controller: controller,
          keyboardType: type,
          obscureText: obx!,
          cursorColor: AppColor.mainTextColor,
          style: TextStyle(
            fontSize: 18,
            color: AppColor.mainTextColor,
          ),
          decoration: InputDecoration(
              hintText: text,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: height! * 15,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w400,
              ),
              filled: true,
              prefixIcon: Icon(
                icon,
                size: 20,
                color: Colors.grey,
              ),
              suffixIcon: suffixIcon,
              fillColor: AppColor.white,
              disabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.white)),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.white)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.white)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: AppColor.white,
                  ))),
        ));
  }
}
