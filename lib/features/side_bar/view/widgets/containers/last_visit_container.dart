import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:asdc/features/side_bar/view/widgets/containers/cemex_container.dart';
import 'package:asdc/features/side_bar/view/widgets/rows/last_visit_title_row.dart';
import 'package:asdc/features/side_bar/view/widgets/rows/variance_row.dart';
import 'package:flutter/material.dart';

class LastVisitContainer extends StatelessWidget {
  const LastVisitContainer({super.key});

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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w),
        child: Column(
          children: [
            const LastVisitTitleRow(),
            Divider(thickness: 1.h),
            SizedBox(height: 16.h),
            const CemexContainer(),
            SizedBox(height: 16.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'NO of visit:',
                    style: TextStyles.textStyle18.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: ' 668',
                    style: TextStyles.textStyle16.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            const VarianceRow(),
            const VarianceRow(),
            const VarianceRow(),
            const VarianceRow(),
          ],
        ),
      ),
    );
  }
}
