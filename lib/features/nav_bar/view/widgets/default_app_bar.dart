import 'package:asdc/core/utils/app_colors.dart';
import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/features/nav_bar/view/widgets/buttons/side_bar_button.dart';
import 'package:asdc/features/nav_bar/view/widgets/cards/app_bar_card.dart';
import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(60.h);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.kBackgroundColor,
          border: const Border(
            top: BorderSide.none,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(0, 7.5.h),
              blurRadius: 5,
              blurStyle: BlurStyle.normal,
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SideBarButton(),
            SizedBox(width: 10.w),
            const AppBarCard(),
          ],
        ),
      ),
    );
  }
}
