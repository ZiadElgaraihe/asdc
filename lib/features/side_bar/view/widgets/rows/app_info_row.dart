import 'package:asdc/core/utils/app_colors.dart';
import 'package:asdc/core/utils/app_icons.dart';
import 'package:asdc/features/side_bar/view/widgets/containers/app_info_container.dart';
import 'package:flutter/material.dart';

class AppInfoRow extends StatelessWidget {
  const AppInfoRow({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppInfoContainer(
          title: 'No of Clients',
          icon: AppIcons.iconsUsersGroup,
          titleColor: AppColors.kSecondaryColor,
          info: '100',
        ),
        AppInfoContainer(
          title: 'Daily Visits',
          icon: AppIcons.iconsCardTransfer,
          titleColor: Color(0xFFFFBC02),
          info: '30k',
        ),
        AppInfoContainer(
          title: 'Active Clients',
          icon: AppIcons.iconsUsersGroup,
          titleColor: Color(0xFF876AFE),
          info: '75',
        ),
      ],
    );
  }
}
