import 'package:asdc/core/utils/app_colors.dart';
import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

class NotificationSwitchRow extends StatefulWidget {
  const NotificationSwitchRow({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<NotificationSwitchRow> createState() => _NotificationSwitchRowState();
}

class _NotificationSwitchRowState extends State<NotificationSwitchRow> {
  final ValueNotifier<bool> _isTurnOn = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Row(
        children: [
          AdvancedSwitch(
            controller: _isTurnOn,
            height: 20.h,
            width: 26.6.w,
            activeColor: const Color(0xFF4318FF),
            inactiveColor: const Color(0xFFE4EBF6),
          ),
          SizedBox(width: 11.9.w),
          Text(
            widget.title,
            style: TextStyles.textStyle16.copyWith(
              color: AppColors.kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
