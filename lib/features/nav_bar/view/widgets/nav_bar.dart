import 'package:asdc/core/utils/app_colors.dart';
import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sidebarx/sidebarx.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key, required this.controller});

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Clipper(),
      child: SizedBox(
        height: 80.h,
        child: BottomNavigationBar(
          onTap: (value) {
            if (value == 3) {
              controller.selectIndex(9);
            }
          },
          backgroundColor: AppColors.kPrimaryColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: SvgPicture.asset(
                AppIcons.iconsSettings,
                height: 24.h,
                width: 24.w,
                fit: BoxFit.fill,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: SvgPicture.asset(
                AppIcons.iconsNotification,
                height: 24.h,
                width: 24.w,
                fit: BoxFit.fill,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: SvgPicture.asset(
                AppIcons.iconsChat,
                height: 24.h,
                width: 24.w,
                fit: BoxFit.fill,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: SvgPicture.asset(
                AppIcons.iconsHome,
                height: 24.h,
                width: 24.w,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double h = size.height;
    double w = size.width;

    Path path = Path();
    path.moveTo(0, 15);
    path.lineTo(0, h);
    path.lineTo(w, h);
    path.lineTo(w, 12.5);
    path.quadraticBezierTo(
        w * 0.995, 2.5, w * 0.97, 0);
    path.lineTo(w * 0.03, 0);
    path.quadraticBezierTo(w * 0.005, 2.5, 0, 15);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
