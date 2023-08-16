import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/features/side_bar/view/widgets/rows/employee_info_row.dart';
import 'package:asdc/features/side_bar/view/widgets/rows/employee_title_row.dart';
import 'package:flutter/material.dart';

class EmployeeContainer extends StatelessWidget {
  const EmployeeContainer({super.key});

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
          const EmployeeTitleRow(),
          SizedBox(height: 24.h),
          const EmployeeInfoRow(),
        ],
      ),
    );
  }
}
