import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/app_icons.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LastVisitTitleRow extends StatelessWidget {
  const LastVisitTitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AppIcons.iconsDatabase,
          height: 22.6.h,
          width: 22.6.w,
          fit: BoxFit.fill,
        ),
        SizedBox(width: 9.w),
        Text(
          'last visits',
          style: TextStyles.textStyle16.copyWith(
            fontFamily: GoogleFonts.lato().fontFamily,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'View All',
            style: TextStyles.textStyle14.copyWith(
              color: const Color(0xFF876AFE),
            ),
          ),
        ),
      ],
    );
  }
}
