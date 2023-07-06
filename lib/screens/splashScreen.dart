// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rental_marks_business/routes/local/images/app_image.dart';
import 'package:rental_marks_business/screens/lang.dart';
import 'package:rental_marks_business/utils/theme/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4)).then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ChooseLanguage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    print("width: ${screenSize.width}");
    print("height: ${screenSize.height}");
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Material(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.topCenter,
              radius: 1.5,
              colors: [
                AppColor.lightYellow,
                AppColor.darkerYellow,
              ],
            ),
          ),
          child: Stack(
            alignment: Alignment.centerRight,
            children: <Widget>[
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
              // Logo
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage(AppImage.logo),
                      // width: screenSize.width * 0.8,
                      // height: screenSize.height * 0.2,
                    ),
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    const Image(
                      image: AssetImage(AppImage.logoWord),
                      // width: screenSize.width * 0.8,
                      // height: screenSize.height * 0.1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
