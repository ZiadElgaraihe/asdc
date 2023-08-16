import 'package:asdc/core/utils/app_colors.dart';
import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class MoreInfoContainer extends StatelessWidget {
  const MoreInfoContainer({
    super.key,
    required this.title,
    required this.info,
  });

  final String title;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 59.19.h,
      width: 174.w,
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 15.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.4.w),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 5.h),
            blurRadius: 5,
            blurStyle: BlurStyle.normal,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyles.textStyle9.copyWith(
              color: AppColors.kLogInSecondaryColor,
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            info,
            style: TextStyles.textStyle11.copyWith(
              color: AppColors.kLogInPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
