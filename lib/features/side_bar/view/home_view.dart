import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/features/side_bar/view/widgets/containers/activity_container.dart';
import 'package:asdc/features/side_bar/view/widgets/containers/daily_visits_container.dart';
import 'package:asdc/features/side_bar/view/widgets/containers/last_visit_container.dart';
import 'package:asdc/features/side_bar/view/widgets/containers/total_client_container.dart';
import 'package:asdc/features/side_bar/view/widgets/rows/app_info_row.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          children: [
            const AppInfoRow(),
            SizedBox(height: 24.h),
            const TotalClientContainer(),
            SizedBox(height: 24.h),
            const DailyVisitsContainer(),
            SizedBox(height: 24.h),
            const ActivityContainer(),
            SizedBox(height: 24.h),
            const LastVisitContainer(),
          ],
        ),
      ),
    );
  }
}
