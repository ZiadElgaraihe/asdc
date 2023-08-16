import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/features/auth/view/widgets/buttons/log_in_button.dart';
import 'package:asdc/features/auth/view/widgets/rows/remember_me_row.dart';
import 'package:asdc/features/auth/view/widgets/sections/log_in_view_card__title_section.dart';
import 'package:asdc/features/auth/view/widgets/sections/log_in_view_card_text_field_section.dart';
import 'package:flutter/material.dart';

class LogInViewCard extends StatelessWidget {
  const LogInViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17.55.w, vertical: 9.83.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.w),
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 5.h),
            blurRadius: 1.5,
            blurStyle: BlurStyle.normal,
            spreadRadius: 0.5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const LogInViewCardTitleSection(),
          const LogInViewCardTextFieldSection(),
          const RememberMeRow(),
          SizedBox(height: 22.3.h),
          const LogInButton(),
        ],
      ),
    );
  }
}
