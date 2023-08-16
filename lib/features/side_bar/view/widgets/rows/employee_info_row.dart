import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/app_images.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:asdc/features/side_bar/view/widgets/rows/axis_info_row.dart';
import 'package:flutter/material.dart';

class EmployeeInfoRow extends StatelessWidget {
  const EmployeeInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            AxisInfoRow(
              iconColor: const Color(0xFF6956E5),
              title: 'Inactive',
              textStyle: TextStyles.textStyle14,
            ),
            Text(
              '254',
              style: TextStyles.textStyle18,
            ),
            SizedBox(height: 36.h),
            AxisInfoRow(
              iconColor: const Color(0xFFFB896B),
              title: 'Active',
              textStyle: TextStyles.textStyle14,
            ),
            Text(
              '3000',
              style: TextStyles.textStyle18,
            ),
            SizedBox(height: 36.h),
            AxisInfoRow(
              iconColor: const Color(0xFFF8C07F),
              title: 'Total',
              textStyle: TextStyles.textStyle14,
            ),
            Text(
              '3254',
              style: TextStyles.textStyle18,
            ),
          ],
        ),
        Image.asset(
          AppImages.imagesEmployee,
          height: 215.h,
          width: 215.w,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
