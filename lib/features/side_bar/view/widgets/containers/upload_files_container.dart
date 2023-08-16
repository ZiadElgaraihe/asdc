import 'package:asdc/core/utils/app_colors.dart';
import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:asdc/features/side_bar/view/widgets/buttons/publish_button.dart';
import 'package:asdc/features/side_bar/view/widgets/buttons/upload_files_button.dart';
import 'package:flutter/material.dart';

class UploadFilesContainer extends StatelessWidget {
  const UploadFilesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      padding: EdgeInsets.symmetric(horizontal: 15.98.w, vertical: 15.98.h),
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
      child: Row(
        children: [
          const UploadFilesButton(),
          SizedBox(width: 21.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Complete your profile',
                style: TextStyles.textStyle14.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.kPrimaryColor,
                ),
              ),
              SizedBox(height: 4.h),
              SizedBox(
                width: 144.4.w,
                child: Text(
                  'Stay on the pulse of distributed projects with an anline whiteboard to plan, coordinate and discuss',
                  style: TextStyles.textStyle9.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.kLogInSecondaryColor,
                  ),
                ),
              ),
              SizedBox(height: 43.79.h),
              const PublishButton(),
            ],
          ),
        ],
      ),
    );
  }
}
