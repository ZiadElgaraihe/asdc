import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/app_images.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CemexContainer extends StatelessWidget {
  const CemexContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.w),
        color: const Color(0xFF212F48),
      ),
      child: Row(
        children: [
          Image.asset(
            AppImages.imagesCemex,
            height: 64.h,
            width: 64.w,
            fit: BoxFit.fill,
          ),
          SizedBox(width: 5.w),
          Text(
            'Cemex',
            style: TextStyles.textStyle18.copyWith(
              color: Colors.white,
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 10.w),
          SizedBox(
            height: 30.h,
            child: VerticalDivider(
              thickness: 1.w,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 5.w),
          Text(
            'ID :  233.457',
            style: TextStyles.textStyle16.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: GoogleFonts.poppins().fontFamily,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
