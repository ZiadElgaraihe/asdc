import 'package:asdc/core/utils/app_colors.dart';
import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({super.key});

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  final ValueNotifier<bool> _obscureText = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ValueListenableBuilder(
        valueListenable: _obscureText,
        builder: (context, obscureText, child) => TextFormField(
          obscureText: obscureText,
          keyboardType: TextInputType.visiblePassword,
          textAlignVertical: TextAlignVertical.center,
          style: TextStyles.textStyle9.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.kLogInPrimaryColor,
          ),
          decoration: InputDecoration(
            hintText: 'password',
            hintStyle: TextStyles.textStyle9.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.kLogInSecondaryColor,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16.84.w),
            suffixIcon: Material(
              color: Colors.transparent,
              child: IconButton(
                onPressed: () {
                  _obscureText.value = !_obscureText.value;
                },
                splashRadius: 12.5.w,
                icon: Icon(
                  obscureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  size: 14.w,
                ),
              ),
            ),
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
      ),
    );
  }
}
