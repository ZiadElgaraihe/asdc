import 'package:asdc/core/utils/app_colors.dart';
import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:asdc/features/auth/view/widgets/buttons/remember_me_check_box.dart';
import 'package:flutter/material.dart';

class RememberMeRow extends StatelessWidget {
  const RememberMeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const RemeberMeCheckbox(),
        SizedBox(width: 7.72.w),
        Text(
          'Keep me logged in',
          style: TextStyles.textStyle9.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.kLogInPrimaryColor,
          ),
        )
      ],
    );
  }
}
