import 'package:flutter/material.dart';
import 'package:rental_marks_business/utils/theme/colors.dart';

class AuthButton extends StatelessWidget {
  double? height;
  double? width;
  String? text;
  VoidCallback? onPressed;

  AuthButton({
    this.onPressed,
    this.height,
    this.width,
    this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height! * 46,
      width: width! * 370,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            )),
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(AppColor.authBtn)),
        child: Text(text!,
            style: TextStyle(
              fontSize: height! * 15,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w700,
              color: AppColor.mainTextColor,
            )),
      ),
    );
  }
}
