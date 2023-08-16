import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/features/side_bar/view/widgets/charts/overall_user_activity_chart.dart';
import 'package:asdc/features/side_bar/view/widgets/rows/overall_user_activity_title_row.dart';
import 'package:flutter/material.dart';

class OverallUserActivityContainer extends StatelessWidget {
  const OverallUserActivityContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.6.w),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const OverallUserActivityTitleRow(),
          SizedBox(height: 6.h),
          Divider(
            color: const Color(0xFFE4E5E7),
            thickness: 0.6.h,
          ),
          SizedBox(height: 17.h),
          OverallUserActivityChart(),
        ],
      ),
    );
  }
}
