import 'package:asdc/core/utils/app_colors.dart';
import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class GeneralInfoContainer extends StatelessWidget {
  const GeneralInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.6.w),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 5.h),
            blurRadius: 5,
            blurStyle: BlurStyle.normal,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'General Information',
            style: TextStyles.textStyle16.copyWith(
              color: AppColors.kLogInPrimaryColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.6.h),
          SizedBox(
            width: 321.w,
            child: Text(
              'As we live, our hearts turn colder. Cause pain is what we go through as we become older. We get insulted by others, lose trust for those others. We get back stabbed by friends. It becomes harder for us to give others a hand. We get our heart broken by people we love, even that we give them all ajkmdklamdklm',
              style: TextStyles.textStyle16.copyWith(
                color: AppColors.kLogInSecondaryColor,
                fontWeight: FontWeight.w400,
              ),
              maxLines: 7,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
