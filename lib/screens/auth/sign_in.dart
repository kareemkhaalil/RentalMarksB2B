import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rental_marks_business/bloc/blocs/cubit/auth_cubit.dart';
import 'package:rental_marks_business/routes/local/images/app_image.dart';
import 'package:rental_marks_business/utils/theme/app_sizes.dart';
import 'package:rental_marks_business/utils/theme/colors.dart';
import 'package:rental_marks_business/widgets/auth_button.dart';
import 'package:rental_marks_business/widgets/auth_textForm.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double? height = screenSize.height * AppSizes.oneHeightPixel;
    double? width = screenSize.width * AppSizes.oneWidthPixel;

    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          var cubit = context.read<AuthCubit>();
          return Scaffold(
            backgroundColor: AppColor.lightColorBG,
            body: Padding(
              padding: EdgeInsets.all(
                  screenSize.width * AppSizes.oneWidthPixel * 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height:
                              screenSize.height * AppSizes.oneHeightPixel * 91,
                        ),
                        SizedBox(
                          width:
                              screenSize.width * AppSizes.oneWidthPixel * 219,
                          height:
                              screenSize.height * AppSizes.oneHeightPixel * 219,
                          child: Image.asset(AppImage.authImage),
                        ),
                        SizedBox(
                          height:
                              screenSize.height * AppSizes.oneHeightPixel * 20,
                        ),
                        Text(
                          'Log In',
                          style: TextStyle(
                            fontSize: screenSize.height *
                                AppSizes.oneHeightPixel *
                                20,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w700,
                            color: AppColor.mainTextColor,
                          ),
                        ),
                        SizedBox(
                          height:
                              screenSize.height * AppSizes.oneHeightPixel * 20,
                        ),
                        AuthTextForm(
                          height: height,
                          width: width,
                          icon: Icons.email_outlined,
                          type: TextInputType.emailAddress,
                          text: "Email or user name",
                          obx: false,
                          controller: cubit.emailController,
                        ),
                        SizedBox(
                          height:
                              screenSize.height * AppSizes.oneHeightPixel * 20,
                        ),
                        AuthTextForm(
                          height: height,
                          width: width,
                          icon: Icons.lock_outlined,
                          type: TextInputType.visiblePassword,
                          text: "Password",
                          obx: cubit.obs,
                          suffixIcon: IconButton(
                            onPressed: () {
                              cubit.changeObs();
                            },
                            icon: cubit.obs == true
                                ? const Icon(
                                    Icons.visibility_off_outlined,
                                  )
                                : const Icon(
                                    Icons.visibility_outlined,
                                  ),
                          ),
                          controller: cubit.passwordController,
                        ),
                        SizedBox(
                          height:
                              screenSize.height * AppSizes.oneHeightPixel * 20,
                        ),
                        AuthButton(
                          height: height,
                          width: width,
                          text: "Sign in",
                          onPressed: () {},
                        ),
                        SizedBox(
                          height:
                              screenSize.height * AppSizes.oneHeightPixel * 20,
                        ),
                        Row(
                          children: [
                            Text(
                              "Don't have account?",
                              style: TextStyle(
                                fontSize: screenSize.height *
                                    AppSizes.oneHeightPixel *
                                    16,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: width * 2,
                            ),
                            TextButton(
                              onPressed: () {
                                cubit.goToSignUp(context);
                              },
                              child: Text(
                                'Sign up',
                                style: TextStyle(
                                  fontSize: screenSize.height *
                                      AppSizes.oneHeightPixel *
                                      16,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.mainTextColor,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
