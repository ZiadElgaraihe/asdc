import 'package:asdc/core/utils/app_colors.dart';
import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:asdc/features/nav_bar/view/navigation_bar_view.dart';
import 'package:flutter/material.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Future.delayed(
          const Duration(milliseconds: 500),
          () {
            Navigator.pushReplacementNamed(context, NavigationBarView.id);
          },
        );
      },
      style: ButtonStyle(
        fixedSize: MaterialStatePropertyAll(
          Size(287.8.w, 37.9.h),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11.23.w),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(
          AppColors.kLogInPrimaryColor,
        ),
      ),
      child: Text(
        'log In',
        style: TextStyles.textStyle16.copyWith(
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
