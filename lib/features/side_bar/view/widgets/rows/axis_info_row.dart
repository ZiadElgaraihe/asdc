import 'package:asdc/core/utils/app_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AxisInfoRow extends StatelessWidget {
  const AxisInfoRow({
    super.key,
    required this.iconColor,
    required this.title,
    required this.textStyle,
  });

  final Color iconColor;
  final String title;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 6.w),
        Icon(
          Icons.circle,
          size: 8.w,
          color: iconColor,
        ),
        SizedBox(width: 6.w),
        Text(
          title,
          style: textStyle.copyWith(
            fontFamily: GoogleFonts.manrope().fontFamily,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
