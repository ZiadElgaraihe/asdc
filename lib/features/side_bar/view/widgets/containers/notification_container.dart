import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/features/side_bar/view/widgets/rows/notification_switch_row.dart';
import 'package:asdc/features/side_bar/view/widgets/rows/notification_title_row.dart';
import 'package:flutter/material.dart';

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const NotificationTitlRow(),
          SizedBox(height: 16.h),
          const NotificationSwitchRow(title: 'Item update notifications'),
          const NotificationSwitchRow(title: 'Item comment notifications'),
          const NotificationSwitchRow(title: 'Buyer review notifications'),
          const NotificationSwitchRow(title: 'Rating reminders notifications'),
          const NotificationSwitchRow(title: 'Meetups near you notifications'),
          const NotificationSwitchRow(title: 'Company news notifications'),
          const NotificationSwitchRow(title: 'New launches and projects'),
          const NotificationSwitchRow(title: 'Monthly product changes'),
          const NotificationSwitchRow(title: 'Subscribe to newsletter'),
          const NotificationSwitchRow(
              title: 'Email me when someone follows me'),
        ],
      ),
    );
  }
}
