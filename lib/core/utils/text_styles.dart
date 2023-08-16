import 'package:asdc/core/utils/app_colors.dart';
import 'package:asdc/core/utils/app_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class TextStyles {
  static TextStyle textStyle5 = TextStyle(
    fontSize: 5.sp,
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle textStyle6 = TextStyle(
    fontSize: 6.sp,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle textStyle7 = TextStyle(
    fontSize: 7.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textStyle9 = TextStyle(
    fontSize: 9.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textStyle10 = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyle11 = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyle12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );

  static TextStyle textStyle14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyle16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textStyle18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    fontFamily: GoogleFonts.manrope().fontFamily,
  );

  static TextStyle textStyle21 = TextStyle(
    fontSize: 21.sp,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );

  static TextStyle textStyle25 = TextStyle(
    fontSize: 25.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.kLogInPrimaryColor,
  );
}
