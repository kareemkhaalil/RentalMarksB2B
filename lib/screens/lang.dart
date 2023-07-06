// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:rental_marks_business/bloc/blocs/cubit/lang_cubit.dart';
import 'package:rental_marks_business/routes/local/images/app_image.dart';
import 'package:rental_marks_business/utils/theme/app_sizes.dart';
import 'package:rental_marks_business/utils/theme/colors.dart';

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LangCubit>(
      create: (context) => LangCubit(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: BlocBuilder<LangCubit, LangState>(
          builder: (context, state) {
            final cubit = BlocProvider.of<LangCubit>(context);
            Size screenSize = MediaQuery.of(context).size;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Opacity(
                      opacity: 0.12,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /// Arabic
                        GestureDetector(
                          onTapDown: (_) {
                            cubit.setScaleEg(true);
                            cubit.changeLang(
                                false); // تغيير قيمة الراديو عند الضغط على العنصر
                          },
                          onTapUp: (_) => cubit.setScaleEg(false),
                          onTapCancel: () => cubit.setScaleEg(false),
                          child: AnimatedScale(
                            duration: Duration(milliseconds: 100),
                            scale: cubit.scaleEgValue ? 0.9 : 1.0,
                            child: Container(
                              width: screenSize.width *
                                  (AppSizes.oneWidthPixel * 126),
                              height: screenSize.height *
                                  (AppSizes.oneHeightPixel * 127),
                              decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AppImage.egyFlag,
                                    width: screenSize.width *
                                        (AppSizes.oneWidthPixel * 32),
                                  ),
                                  SizedBox(
                                    height: screenSize.height *
                                        (AppSizes.oneHeightPixel * 3),
                                  ),
                                  Transform.scale(
                                    scale: 1.3,
                                    child: Radio(
                                      activeColor: AppColor.darkerYellow,
                                      value: false,
                                      groupValue: cubit.isEnglish,
                                      onChanged: (value) {
                                        cubit.changeLang(value!);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width:
                              screenSize.width * (AppSizes.oneWidthPixel * 40),
                        ),

                        /// English
                        GestureDetector(
                          onTapDown: (_) {
                            cubit.changeLang(true);
                            cubit.setScaleUs(true);
                          },
                          onTapUp: (_) => cubit.setScaleUs(false),
                          onTapCancel: () => cubit.setScaleUs(false),
                          child: AnimatedScale(
                            duration: Duration(milliseconds: 100),
                            scale: cubit.scaleUsValue ? 0.9 : 1.0,
                            child: Container(
                              width: screenSize.width *
                                  (AppSizes.oneWidthPixel * 126),
                              height: screenSize.height *
                                  (AppSizes.oneHeightPixel * 127),
                              decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AppImage.usFlag,
                                    width: screenSize.width *
                                        (AppSizes.oneWidthPixel * 30),
                                  ),
                                  SizedBox(
                                    height: screenSize.height *
                                        (AppSizes.oneHeightPixel * 3),
                                  ),
                                  Transform.scale(
                                    scale: 1.3,
                                    child: GestureDetector(
                                      onTapDown: (_) => cubit.setScaleUs(true),
                                      onTapUp: (_) => cubit.setScaleUs(false),
                                      onTapCancel: () {
                                        cubit.changeLang(true);
                                        cubit.setScaleUs(false);
                                      },
                                      child: Radio(
                                        activeColor: AppColor.darkerYellow,
                                        value: true,
                                        groupValue: cubit.isEnglish,
                                        onChanged: (value) {
                                          cubit.changeLang(value!);
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
