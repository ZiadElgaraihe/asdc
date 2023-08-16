import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:asdc/features/side_bar/view/widgets/charts/total_client_chart.dart';
import 'package:asdc/features/side_bar/view/widgets/rows/axis_info_row.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalClientContainer extends StatelessWidget {
  const TotalClientContainer({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total Clients',
            style: TextStyles.textStyle16.copyWith(
              fontFamily: GoogleFonts.lato().fontFamily,
            ),
          ),
          SizedBox(height: 8.h),
          AxisInfoRow(
            title: 'Current Year',
            iconColor: Colors.black,
            textStyle: TextStyles.textStyle12,
          ),
          SizedBox(height: 8.h),
          AxisInfoRow(
            title: 'Previous Year',
            iconColor: const Color(0xFFA8C5DA),
            textStyle: TextStyles.textStyle12,
          ),
          SizedBox(height: 8.h),
          TotalClientChart()
        ],
      ),
    );
  }
}
