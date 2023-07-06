import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rental_marks_business/routes/local/images/app_image.dart';
import 'package:rental_marks_business/utils/theme/colors.dart';
import 'package:rental_marks_business/widgets/home_blocks.dart';
import 'package:rental_marks_business/widgets/percentage_circle.dart';
import 'package:rental_marks_business/widgets/product_card.dart';
import 'package:rental_marks_business/widgets/static_circle.dart';
import 'package:rental_marks_business/widgets/triangle_clipper.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.centerRight,
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity,
              height: screenSize.height * 0.5,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                gradient: RadialGradient(
                  center: Alignment.topCenter,
                  radius: 1.5,
                  colors: [
                    AppColor.lightYellow,
                    AppColor.darkerYellow,
                  ],
                ),
              ),
            ),
          ),
          // Shadow
          Positioned(
            right: -screenSize.width * 0.5,
            child: Opacity(
              opacity: 0.4,
              child: Container(
                width: screenSize.width,
                height: screenSize.height,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 200,
                      spreadRadius: 0,
                      offset: Offset(0, 0),
                    )
                  ],
                ),
              ),
            ),
          ),

          // Circle 1
          Positioned(
            right: -screenSize.width * 0.66,
            child: Image.asset(
              AppImage.circle1,
            ),
          ),
          // Circle 2
          Positioned(
            right: -screenSize.width * 0.84,
            child: Image.asset(
              AppImage.circle2,
            ),
          ),
          // Circle 3
          Positioned(
            right: -screenSize.width * 1,
            child: Image.asset(
              AppImage.circle3,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenSize.height * 0.09,
                    ),
                    Transform.scale(
                      scale: screenSize.width * 0.002,
                      child: StaticCircle(
                        percentage: 30,
                        size: screenSize.width * 0.3,
                        text: 'Conversation Rate',
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.001,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HomeBlock(
                          color: AppColor.white,
                          textColor: AppColor.mainTextColor,
                          height: screenSize.height * 0.001,
                          heightSize: screenSize.width * 0.25,
                          widthSize: screenSize.width * 0.3,
                          icon: SvgPicture.asset(AppImage.redArrow,
                              width: screenSize.width * 0.04),
                          number: '1086',
                          text: 'Views',
                          width: screenSize.width * 0.02,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.02,
                        ),
                        HomeBlock(
                          color: AppColor.white,
                          textColor: AppColor.mainTextColor,
                          height: screenSize.height * 0.001,
                          heightSize: screenSize.width * 0.25,
                          widthSize: screenSize.width * 0.3,
                          icon: SvgPicture.asset(AppImage.greenArrow,
                              width: screenSize.width * 0.04),
                          number: '1086',
                          text: 'Views',
                          width: screenSize.width * 0.02,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.02,
                        ),
                        HomeBlock(
                          color: AppColor.mainTextColor,
                          textColor: AppColor.white,
                          height: screenSize.height * 0.001,
                          heightSize: screenSize.width * 0.25,
                          widthSize: screenSize.width * 0.3,
                          icon: SizedBox(),
                          number: '1086',
                          text: 'Views',
                          width: screenSize.width * 0.02,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HomeBlock(
                          rowMainAxisAlignment: MainAxisAlignment.start,
                          color: AppColor.white,
                          alignment: Alignment.centerLeft,
                          textColor: AppColor.mainTextColor,
                          height: screenSize.height * 0.001,
                          heightSize: screenSize.width * 0.25,
                          widthSize: screenSize.width * 0.45,
                          icon: SvgPicture.asset(AppImage.calls,
                              width: screenSize.width * 0.055),
                          number: '1086',
                          text: 'Calls',
                          width: screenSize.width * 0.16,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.02,
                        ),
                        HomeBlock(
                          rowMainAxisAlignment: MainAxisAlignment.start,
                          alignment: Alignment.centerLeft,
                          color: AppColor.white,
                          textColor: AppColor.mainTextColor,
                          height: screenSize.height * 0.001,
                          heightSize: screenSize.width * 0.25,
                          widthSize: screenSize.width * 0.45,
                          icon: SvgPicture.asset(AppImage.messages,
                              width: screenSize.width * 0.055),
                          number: '1086',
                          text: 'Messages',
                          width: screenSize.width * 0.08,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.001,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: screenSize.width * 0.01,
                        ),
                        Icon(
                          AppIcons.products,
                          size: screenSize.width * 0.05,
                        ),
                        SizedBox(
                          width: screenSize.width * 0.02,
                        ),
                        Text(
                          'My Products  {13 published}',
                          style: TextStyle(
                            color: AppColor.mainTextColor,
                            fontSize: screenSize.width * 0.03,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.25,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'See All',
                            style: TextStyle(
                              color: AppColor.mainTextColor,
                              fontSize: screenSize.width * 0.03,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.01,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.height * 0.001,
                    ),
                    Container(
                      height: screenSize.height * 0.3,
                      width: screenSize.width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ProductCard(
                                image: "lib/utils/images/camera.png",
                                heartButtonCallback: () {
                                  // تنفيذ الأكشن المطلوب عند الضغط على زر القلب
                                },
                                trackButtonCallback: () {
                                  // تنفيذ الأكشن المطلوب عند الضغط على زر التتبع
                                },
                                discountText: '10% Discount limited Offer',
                                productName: 'Canon Mp-E 65mm f/2.8 1-5x Macro',
                                category: 'Electronics',
                                price: '175 EGP / Day',
                                messages: '154 messages',
                                calls: '1564 calls',
                                views: '132 views',
                                cornerText: 'Featured',
                                editButtonCallback: () {
                                  // تنفيذ الأكشن المطلوب عند الضغط على زر التعديل
                                },
                              ),
                              SizedBox(
                                height: screenSize.height * 0.01,
                              ),
                            ],
                          );
                        },
                        itemCount: 10,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
