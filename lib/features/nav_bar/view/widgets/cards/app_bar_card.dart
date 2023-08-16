import 'package:asdc/core/utils/app_colors.dart';
import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/features/nav_bar/view/widgets/text_fields/app_bar_text_field.dart';
import 'package:flutter/material.dart';

class AppBarCard extends StatelessWidget {
  const AppBarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 299.w,
      margin: EdgeInsets.only(bottom: 12.h, top: 6.h),
      padding: EdgeInsets.only(left: 9.11.w),
      decoration: BoxDecoration(
        color: AppColors.kBackgroundColor,
        borderRadius: BorderRadius.circular(9.1.w),
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 2.h),
            blurRadius: 1.5,
            blurStyle: BlurStyle.normal,
            spreadRadius: 0.5,
          )
        ],
      ),
      child: const AppBarTextField(),
    );
  }
}
