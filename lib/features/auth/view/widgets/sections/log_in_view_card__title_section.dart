import 'package:asdc/core/utils/app_colors.dart';
import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class LogInViewCardTitleSection extends StatelessWidget {
  const LogInViewCardTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'log in',
          style: TextStyles.textStyle25,
        ),
        SizedBox(height: 4.92.h),
        Text(
          'Enter your Username and password to log in!',
          style: TextStyles.textStyle11.copyWith(
            color: AppColors.kLogInSecondaryColor,
          ),
        ),
        SizedBox(height: 32.29.h),
      ],
    );
  }
}
