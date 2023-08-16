import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/features/side_bar/view/widgets/containers/employee_container.dart';
import 'package:asdc/features/side_bar/view/widgets/containers/overall_user_activity_container.dart';
import 'package:asdc/features/side_bar/view/widgets/containers/project_deliveries_container.dart';
import 'package:flutter/material.dart';

class ManagementView extends StatelessWidget {
  const ManagementView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          children: [
            const ProjectDeliveriesContainer(),
            SizedBox(height: 15.5.h),
            const OverallUserActivityContainer(),
            SizedBox(height: 15.5.h),
            const EmployeeContainer(),
          ],
        ),
      ),
    );
  }
}
