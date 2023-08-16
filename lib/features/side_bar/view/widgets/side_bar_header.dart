import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class SideBarHeader extends StatelessWidget {
  const SideBarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.imagesLogo,
      height: 68.h,
      width: 128.w,
      fit: BoxFit.fill,
    );
  }
}
