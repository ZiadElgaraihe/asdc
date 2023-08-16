import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmployeeTitleRow extends StatelessWidget {
  const EmployeeTitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Employee',
          style: TextStyles.textStyle18,
        ),
        const Spacer(),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  'Aug 25-Sept 25',
                  style: TextStyles.textStyle12.copyWith(
                    fontFamily: GoogleFonts.manrope().fontFamily,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF787486),
                  ),
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
