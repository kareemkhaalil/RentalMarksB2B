import 'package:flutter/material.dart';

class HomeBlock extends StatelessWidget {
  final double widthSize;
  final double heightSize;
  final double width;
  final double height;
  final Color color;
  final String number;
  final String text;
  final Widget icon;
  final Color? textColor;
  final MainAxisAlignment rowMainAxisAlignment;
  final AlignmentGeometry alignment;
  const HomeBlock(
      {super.key,
      required this.widthSize,
      required this.heightSize,
      required this.width,
      required this.height,
      required this.color,
      required this.number,
      required this.text,
      required this.icon,
      this.rowMainAxisAlignment = MainAxisAlignment.center,
      this.alignment = Alignment.center,
      this.textColor});
//  width: screenSize.width * 0.36,
//         height: screenSize.width * 0.265,
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widthSize,
        height: heightSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: rowMainAxisAlignment,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    number,
                    style: TextStyle(
                        color: textColor,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: height,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      text,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: width,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Align(
                  alignment: alignment,
                  child: icon,
                ),
              ),
            ],
          ),
        ));
  }
}
