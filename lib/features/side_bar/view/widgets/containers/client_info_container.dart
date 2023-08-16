import 'package:asdc/core/utils/app_colors.dart';
import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/app_images.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:asdc/features/side_bar/view/widgets/stacks/client_photo_stack.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClientInfoContainer extends StatelessWidget {
  const ClientInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 206.h,
      width: 361.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.w),
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 2.5.h),
            blurRadius: 5,
            blurStyle: BlurStyle.normal,
            spreadRadius: 0,
          ),
        ],
        image: const DecorationImage(
          image: AssetImage(AppImages.imagesBackground),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ClientPhotoStack(),
          SizedBox(height: 12.5.h),
          Text(
            'Adam Richmond',
            style: TextStyles.textStyle16.copyWith(
              color: Colors.white.withOpacity(0.8),
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'CTO',
            style: TextStyles.textStyle12.copyWith(
              color: AppColors.kLogInSecondaryColor,
              fontFamily: GoogleFonts.dmSans().fontFamily,
            ),
          ),
        ],
      ),
    );
  }
}
