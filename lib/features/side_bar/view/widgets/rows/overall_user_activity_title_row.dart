import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class OverallUserActivityTitleRow extends StatelessWidget {
  const OverallUserActivityTitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Overall User Activity',
          style: TextStyles.textStyle10,
        ),
        const Spacer(),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  'Admin',
                  style: TextStyles.textStyle10,
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 12.w,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
