import 'package:asdc/core/utils/app_colors.dart';
import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class UserNameTextFormField extends StatelessWidget {
  const UserNameTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: TextFormField(
        keyboardType: TextInputType.name,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyles.textStyle9.copyWith(
          fontWeight: FontWeight.w400,
          color: AppColors.kLogInPrimaryColor,
        ),
        decoration: InputDecoration(
          hintText: 'Username',
          hintStyle: TextStyles.textStyle9.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.kLogInSecondaryColor,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16.84.w),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              AppConfig.sizeData.width >= 600 ? 8.23.w : 11.23.w,
            ),
            borderSide: BorderSide(
              color: AppColors.kLogInSecondaryColor,
              width: 0.7.w,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              AppConfig.sizeData.width >= 600 ? 8.23.w : 11.23.w,
            ),
            borderSide: BorderSide(
              color: AppColors.kLogInPrimaryColor,
              width: 0.7.w,
            ),
          ),
        ),
      ),
    );
  }
}
