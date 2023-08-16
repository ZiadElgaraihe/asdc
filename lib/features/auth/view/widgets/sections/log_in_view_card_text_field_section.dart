import 'package:asdc/core/utils/app_colors.dart';
import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:asdc/features/auth/view/widgets/text_form_field.dart/password_text_form_field.dart';
import 'package:asdc/features/auth/view/widgets/text_form_field.dart/user_text_form_field.dart';
import 'package:flutter/material.dart';

class LogInViewCardTextFieldSection extends StatelessWidget {
  const LogInViewCardTextFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Username*',
          style: TextStyles.textStyle9.copyWith(
            color: AppColors.kLogInPrimaryColor,
          ),
        ),
        SizedBox(height: 8.59.h),
        const UserNameTextFormField(),
        SizedBox(height: 16.84.h),
        Text(
          'Password*',
          style: TextStyles.textStyle9.copyWith(
            color: AppColors.kLogInPrimaryColor,
          ),
        ),
        SizedBox(height: 8.59.h),
        const PasswordTextFormField(),
        SizedBox(height: 21.76.h),
      ],
    );
  }
}
