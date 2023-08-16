import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/features/side_bar/view/widgets/charts/project_deliveries_chart.dart';
import 'package:asdc/features/side_bar/view/widgets/rows/project_deliveries_title_row.dart';
import 'package:flutter/material.dart';

class ProjectDeliveriesContainer extends StatelessWidget {
  const ProjectDeliveriesContainer({super.key});

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
          const ProjectDeliveriesTitleRow(),
          SizedBox(height: 16.h),
          ProjectDeliveriesChart(),
        ],
      ),
    );
  }
}
