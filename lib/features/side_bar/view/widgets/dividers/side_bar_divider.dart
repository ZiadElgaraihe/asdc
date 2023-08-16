import 'package:asdc/core/utils/app_config.dart';
import 'package:flutter/material.dart';

class SideBarDivider extends StatelessWidget {
  const SideBarDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 29.5.h),
      child: Divider(
        color: const Color(0xFFE3E3E3),
        thickness: 1.h,
        indent: 32.w,
        endIndent: 32.w,
      ),
    );
  }
}
