import 'package:asdc/core/utils/app_colors.dart';
import 'package:asdc/core/utils/app_config.dart';
import 'package:flutter/material.dart';

class RemeberMeCheckbox extends StatefulWidget {
  const RemeberMeCheckbox({super.key});

  @override
  State<RemeberMeCheckbox> createState() => _RemeberMeCheckboxState();
}

class _RemeberMeCheckboxState extends State<RemeberMeCheckbox> {
  final ValueNotifier<bool> _rememberMe = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _rememberMe,
      builder: (context, value, child) => Checkbox(
        activeColor: AppColors.kLogInPrimaryColor,
        splashRadius: 0,
        side: BorderSide(
          color: AppColors.kLogInSecondaryColor,
          width: 0.7.w,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1.4.w),
        ),
        value: value,
        onChanged: (value) {
          _rememberMe.value = value!;
        },
        visualDensity: AppConfig.sizeData.width < 600
            ? VisualDensity(horizontal: -4.w, vertical: -4.h)
            : null,
      ),
    );
  }
}
