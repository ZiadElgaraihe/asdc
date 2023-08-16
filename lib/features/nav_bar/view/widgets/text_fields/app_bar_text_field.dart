import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/app_icons.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarTextField extends StatelessWidget {
  const AppBarTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyles.textStyle12.copyWith(
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        counterText: '',
        hintText: 'Search property...',
        hintStyle: TextStyles.textStyle12.copyWith(
          color: const Color(0xFFA8A8A8),
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: Material(
          color: Colors.transparent,
          child: IconButton(
            onPressed: () {},
            splashRadius: 10.w,
            icon: SvgPicture.asset(
              AppIcons.iconsSearch,
              height: 18.2.h,
              width: 18.2.w,
              fit: BoxFit.fill,
            ),
          ),
        ),
        border: InputBorder.none,
      ),
    );
  }
}
