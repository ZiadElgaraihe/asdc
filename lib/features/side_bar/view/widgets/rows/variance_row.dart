import 'package:asdc/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class VarianceRow extends StatelessWidget {
  const VarianceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Variance:',
          style: TextStyles.textStyle18.copyWith(
            color: Colors.black,
          ),
        ),
        const Spacer(),
        Text(
          '668',
          style: TextStyles.textStyle16.copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
