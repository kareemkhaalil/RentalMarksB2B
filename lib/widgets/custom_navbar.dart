import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental_marks_business/bloc/blocs/cubit/app_cubit.dart';
import 'package:rental_marks_business/utils/theme/app_sizes.dart';
import 'package:rental_marks_business/utils/theme/colors.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<AppCubit>();

    return ListView.builder(
      shrinkWrap: true,
      itemCount: cubit.navIcons.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return IconButton(
          onPressed: () {
            cubit.changeIndex(index);
          },
          icon: ShaderMask(
            shaderCallback: (Rect bounds) {
              return cubit.gradient.createShader(bounds);
            },
            child: Icon(
              cubit.navIcons[index],
              color: AppColor.gray, // لون الأيقونة الأساسي
            ),
          ),
        );
      },
    );
  }
}
