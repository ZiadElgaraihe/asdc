import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/app_icons.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:asdc/features/side_bar/view/widgets/columns/view_per_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityContainer extends StatelessWidget {
  const ActivityContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.w),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 2.5.h),
            blurRadius: 2,
            blurStyle: BlurStyle.normal,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppIcons.iconsDatabase,
                height: 22.6.h,
                width: 22.6.w,
                fit: BoxFit.fill,
              ),
              SizedBox(width: 9.w),
              Text(
                'Activity Charts',
                style: TextStyles.textStyle16.copyWith(
                  fontFamily: GoogleFonts.lato().fontFamily,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          const ViewPerColumn(title: 'Per Week'),
          const ViewPerColumn(title: 'Per Month'),
          const ViewPerColumn(title: 'View Per Quarter'),
          const ViewPerColumn(title: 'View Per Year'),
        ],
      ),
    );
  }
}
