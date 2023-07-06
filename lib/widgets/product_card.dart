import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rental_marks_business/routes/local/images/app_image.dart';
import 'package:rental_marks_business/utils/theme/colors.dart';
import 'package:rental_marks_business/widgets/triangle_clipper.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final VoidCallback? heartButtonCallback;
  final VoidCallback? trackButtonCallback;
  final String discountText;
  final String productName;
  final String category;
  final String price;
  final String messages;
  final String calls;
  final String views;
  final VoidCallback? editButtonCallback;
  final String? cornerText;

  const ProductCard({
    required this.image,
    this.heartButtonCallback,
    this.trackButtonCallback,
    required this.discountText,
    required this.productName,
    required this.category,
    required this.price,
    required this.messages,
    required this.calls,
    required this.views,
    this.cornerText,
    this.editButtonCallback,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          height: screenSize.height * 0.19,
          width: screenSize.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: AppColor.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: heartButtonCallback,
                          icon: Icon(
                            AppIcons.heart,
                            size: screenSize.width * 0.07,
                            color: AppColor.gray.withOpacity(0.6),
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.000001),
                        IconButton(
                          onPressed: trackButtonCallback,
                          icon: SvgPicture.asset(
                            AppImage.track,
                            width: screenSize.width * 0.1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: screenSize.width * 0.01),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Image.asset(
                        image,
                        width: screenSize.width * 0.2,
                      ),
                    ),
                    SizedBox(width: screenSize.width * 0.02),
                    Column(
                      children: [
                        Text(
                          discountText,
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: screenSize.width * 0.025,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.01),
                        Text(
                          productName,
                          style: TextStyle(
                            color: AppColor.mainTextColor,
                            fontSize: screenSize.width * 0.03,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.01),
                        Row(
                          children: [
                            Text(
                              category,
                              style: TextStyle(
                                color: AppColor.mainTextColor,
                                fontSize: screenSize.width * 0.027,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: screenSize.width * 0.18),
                            Text(
                              price,
                              style: TextStyle(
                                color: AppColor.mainTextColor,
                                fontSize: screenSize.width * 0.027,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: screenSize.height * 0.01),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        AppImage.messageCircle,
                        width: screenSize.width * 0.042,
                      ),
                      SizedBox(width: screenSize.width * 0.01),
                      Text(
                        messages,
                        style: TextStyle(
                          color: AppColor.mainTextColor,
                          fontSize: screenSize.width * 0.025,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.025),
                      SvgPicture.asset(
                        AppImage.calls,
                        width: screenSize.width * 0.042,
                        color: AppColor.gray,
                      ),
                      SizedBox(width: screenSize.width * 0.02),
                      Text(
                        calls,
                        style: TextStyle(
                          color: AppColor.mainTextColor,
                          fontSize: screenSize.width * 0.023,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.025),
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: AppColor.gray,
                        size: screenSize.width * 0.06,
                      ),
                      SizedBox(width: screenSize.width * 0.02),
                      Text(
                        views,
                        style: TextStyle(
                          color: AppColor.mainTextColor,
                          fontSize: screenSize.width * 0.028,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.025),
                      GestureDetector(
                        onTap: editButtonCallback,
                        child: Container(
                          height: screenSize.height * 0.033,
                          width: screenSize.width * 0.14,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColor.blueButtonText.withOpacity(0.15),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: screenSize.width * 0.005,
                                  backgroundColor: AppColor.blueButtonText,
                                ),
                                SizedBox(width: screenSize.width * 0.005),
                                CircleAvatar(
                                  radius: screenSize.width * 0.005,
                                  backgroundColor: AppColor.blueButtonText,
                                ),
                                SizedBox(width: screenSize.width * 0.005),
                                CircleAvatar(
                                  radius: screenSize.width * 0.005,
                                  backgroundColor: AppColor.blueButtonText,
                                ),
                                SizedBox(width: screenSize.width * 0.02),
                                Text(
                                  'Edit',
                                  style: TextStyle(
                                    color: AppColor.blueButtonText,
                                    fontSize: screenSize.width * 0.025,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        cornerText != null
            ? Positioned(
                top: 0,
                right: 0,
                child: TriangleShape(
                  color: AppColor.lightYellow,
                  size: screenSize.width * 0.12,
                  text: cornerText!,
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
