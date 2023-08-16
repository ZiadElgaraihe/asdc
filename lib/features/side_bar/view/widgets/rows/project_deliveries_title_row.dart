import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:asdc/features/side_bar/view/widgets/rows/axis_info_row.dart';
import 'package:flutter/material.dart';

class ProjectDeliveriesTitleRow extends StatelessWidget {
  const ProjectDeliveriesTitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Project Deliveries',
          style: TextStyles.textStyle10.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const Spacer(),
        AxisInfoRow(
          iconColor: const Color(0xFFFB896B),
          title: 'Achieved',
          textStyle: TextStyles.textStyle9,
        ),
        SizedBox(width: 21.w),
        AxisInfoRow(
          iconColor: const Color(0xFF6956E5),
          title: 'Target',
          textStyle: TextStyles.textStyle9,
        ),
      ],
    );
  }
}
