import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/app_icons.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UploadFilesButton extends StatelessWidget {
  const UploadFilesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 184.h,
      width: 150.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.w),
        color: const Color(0xFFFAFCFE),
        border: Border.all(
          color: Colors.grey,
          width: 1.w,
          style: BorderStyle.solid,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(10.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppIcons.iconsUpload,
                height: 47.h,
                width: 47.w,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 7.1.h),
              Text(
                'Upload Files',
                style: TextStyles.textStyle11.copyWith(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF4318FF),
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                'PNG, JPG and GIF files are allowed',
                style: TextStyles.textStyle10.copyWith(
                  fontSize: 7.sp,
                  color: const Color(0xFF8F9BBA),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
