import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/app_icons.dart';
import 'package:asdc/features/side_bar/view/side_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideBarButton extends StatelessWidget {
  const SideBarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        SideBarView.scaffoldKey.currentState!.openDrawer();
      },
      child: SvgPicture.asset(
        AppIcons.iconsMenu,
        height: 35.h,
        width: 52.w,
        fit: BoxFit.cover,
      ),
    );
  }
}
