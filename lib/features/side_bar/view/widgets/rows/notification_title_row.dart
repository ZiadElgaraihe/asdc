import 'package:asdc/core/utils/app_colors.dart';
import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class NotificationTitlRow extends StatelessWidget {
  const NotificationTitlRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notifications',
          style: TextStyles.textStyle16.copyWith(
            color: AppColors.kLogInPrimaryColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        const Spacer(),
        Container(
          height: 32.h,
          width: 24.w,
          decoration: BoxDecoration(
            color: const Color(0xFFF4F7FE),
            borderRadius: BorderRadius.circular(6.w),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(6.w),
              child: Icon(
                Icons.more_horiz_rounded,
                color: const Color(0xFF4318FF),
                size: 17.5.w,
              ),
            ),
          ),
        )
      ],
    );
  }
}
