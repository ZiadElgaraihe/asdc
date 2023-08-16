import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppInfoContainer extends StatelessWidget {
  const AppInfoContainer({
    super.key,
    required this.title,
    required this.icon,
    required this.titleColor,
    required this.info,
  });

  final String title;
  final String icon;
  final Color titleColor;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.h,
      width: 117.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.3.w),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 5.h),
            blurRadius: 2,
            blurStyle: BlurStyle.normal,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                height: 15.6.h,
                width: 15.6.w,
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(titleColor, BlendMode.srcATop),
              ),
              SizedBox(width: 6.w),
              Text(
                title,
                style: TextStyles.textStyle12.copyWith(
                  color: titleColor,
                ),
              )
            ],
          ),
          SizedBox(height: 10.6.h),
          Text(
            info,
            style: TextStyles.textStyle21,
          ),
        ],
      ),
    );
  }
}
