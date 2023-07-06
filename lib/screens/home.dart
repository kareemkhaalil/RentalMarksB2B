import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rental_marks_business/bloc/blocs/cubit/app_cubit.dart';
import 'package:rental_marks_business/routes/local/images/app_image.dart';
import 'package:rental_marks_business/screens/home_screen.dart';
import 'package:rental_marks_business/screens/insights_scree.dart';
import 'package:rental_marks_business/screens/messages_screen.dart';
import 'package:rental_marks_business/screens/products_screen.dart';
import 'package:rental_marks_business/screens/requests_screen.dart';
import 'package:rental_marks_business/utils/theme/app_sizes.dart';
import 'package:rental_marks_business/utils/theme/colors.dart';
import 'package:rental_marks_business/widgets/custom_navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          var cubit = context.read<AppCubit>();

          return Scaffold(
            body: AnimatedSwitcher(
              duration: const Duration(milliseconds: 1000),
              child: Stack(
                children: [
                  _buildPage(context),
                  Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                        left: 20,
                        right: 15,
                        bottom: 2,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  AppImage.logohorez,
                                  width: 25,
                                  height: 25,
                                ),
                                Spacer(),
                                Stack(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        AppIcons.notification,
                                        size: 20,
                                      ),
                                    ),
                                    Positioned(
                                      right: 25,
                                      bottom: 28,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.greenAccent,
                                        radius: 5,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: AppSizes.oneWidthPixel * 10,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    AppIcons.settings,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomBarDefault(
                items: cubit.items,
                backgroundColor: Colors.transparent,
                color: AppColor.gray,
                indexSelected: cubit.visit,
                colorSelected: AppColor.darkerRed,
                onTap: (int index) {
                  cubit.changeIndex(index);
                }),
          );
        },
      ),
    );
  }

  Widget _buildPage(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        var cubit = context.read<AppCubit>();

        return IndexedStack(
          index: cubit.currentPageIndex,
          children: [
            AnimatedOpacity(
              opacity: cubit.visit == 0 ? 1 : 0,
              curve: Curves.easeIn,
              duration: Duration(milliseconds: 500),
              child: HomePage(),
            ),
            AnimatedOpacity(
              opacity: cubit.visit == 1 ? 1 : 0,
              curve: Curves.easeIn,
              duration: Duration(milliseconds: 500),
              child: ProductsPage(),
            ),
            AnimatedOpacity(
              opacity: cubit.visit == 2 ? 1 : 0,
              curve: Curves.easeIn,
              duration: Duration(milliseconds: 500),
              child: RequestsPage(),
            ),
            AnimatedOpacity(
              opacity: cubit.visit == 3 ? 1 : 0,
              curve: Curves.easeIn,
              duration: Duration(milliseconds: 500),
              child: MessagesPage(),
            ),
            AnimatedOpacity(
              opacity: cubit.visit == 4 ? 1 : 0,
              curve: Curves.easeIn,
              duration: Duration(milliseconds: 500),
              child: InsightsPage(),
            ),
          ],
        );
      },
    );
  }
}
