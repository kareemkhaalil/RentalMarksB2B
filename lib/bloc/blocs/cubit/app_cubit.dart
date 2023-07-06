import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:rental_marks_business/routes/local/images/app_image.dart';
import 'package:rental_marks_business/utils/theme/colors.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  List<IconData> navIcons = [
    AppIcons.home,
    AppIcons.products,
    AppIcons.requests,
    AppIcons.messages,
    AppIcons.insights,
  ];
  int currentIndex = 0;
  int visit = 0;
  void changeIndex(int index) {
    if (index == 0) {
      homePage();
    } else if (index == 1) {
      productsPage();
    } else if (index == 2) {
      requestsPage();
    } else if (index == 3) {
      messagesPage();
    } else if (index == 4) {
      insightsPage();
    }
    visit = index;
    emit(AppLoading());
  }

  homePage() {
    currentPageIndex = 0;
    emit(HomeScreen());
  }

  productsPage() {
    currentPageIndex = 1;
    emit(ProductsScreen());
  }

  requestsPage() {
    currentPageIndex = 2;
    emit(RequestsScreen());
  }

  messagesPage() {
    currentPageIndex = 3;
    emit(MessagesScreen());
  }

  insightsPage() {
    currentPageIndex = 4;
    emit(InsightsScreen());
  }

  final gradient = const LinearGradient(
    colors: [AppColor.darkerRed, AppColor.lightRed],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  int currentPageIndex = 0; // تم تغيير هذا السطر

  List<TabItem> items = const [
    TabItem(
      icon: AppIcons.home,
      title: 'Home',
    ),
    TabItem(
      icon: AppIcons.products,
      title: 'Products',
    ),
    TabItem(
      icon: AppIcons.requests,
      title: 'Requests',
    ),
    TabItem(
      icon: AppIcons.messages,
      title: 'Messages',
    ),
    TabItem(
      icon: AppIcons.insights,
      title: 'Insights',
    ),
  ];
}
