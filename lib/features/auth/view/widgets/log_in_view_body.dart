import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/app_images.dart';
import 'package:asdc/features/auth/view/widgets/cards/log_in_view_card.dart';
import 'package:flutter/material.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 36.h),
          child: Column(
            children: [
              Image.asset(
                AppImages.imagesLogo,
                height: 105.h,
                width: 190.w,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 74.64.h),
              const LogInViewCard()
            ],
          ),
        ),
      ),
    );
  }
}
