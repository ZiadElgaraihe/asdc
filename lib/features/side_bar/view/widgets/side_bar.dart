import 'package:asdc/core/utils/app_colors.dart';
import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/app_icons.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:asdc/features/side_bar/view/widgets/dividers/side_bar_divider.dart';
import 'package:asdc/features/side_bar/view/widgets/side_bar_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sidebarx/sidebarx.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key, required this.controller});

  final SidebarXController controller;

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();
    _selectedIndex.value = widget.controller.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: widget.controller,
      headerBuilder: (context, extended) => const SideBarHeader(),
      headerDivider: const SideBarDivider(),
      items: getItems(),
      footerDivider: const SideBarDivider(),
      footerItems: getFooterItems(),
      toggleButtonBuilder: (context, extended) => SizedBox(
        height: 20.h,
      ),
      theme: getSideBarTheme(),
    );
  }

  List<SidebarXItem> getItems() {
    return List.generate(
      _items.length,
      (index) => SidebarXItem(
        label: _items[index]['label'],
        onTap: () {
          _selectedIndex.value = index;
        },
        iconWidget: ValueListenableBuilder(
          valueListenable: _selectedIndex,
          builder: (context, selectedItemIndex, child) => SvgPicture.asset(
            _items[index]['icon']!,
            height: 22.h,
            width: 22.w,
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
              selectedItemIndex == index
                  ? AppColors.kSecondaryColor
                  : Colors.white,
              BlendMode.srcATop,
            ),
          ),
        ),
      ),
    );
  }

  List<SidebarXItem> getFooterItems() {
    return List.generate(
      _items.length,
      (index) => SidebarXItem(
        label: _footerItems[index]['label'],
        onTap: () {
          _selectedIndex.value = index + 4;
        },
        iconWidget: ValueListenableBuilder(
          valueListenable: _selectedIndex,
          builder: (context, selectedItemIndex, child) => SvgPicture.asset(
            _footerItems[index]['icon']!,
            height: 22.h,
            width: 22.w,
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
              selectedItemIndex == index + 4
                  ? AppColors.kSecondaryColor
                  : Colors.white,
              BlendMode.srcATop,
            ),
          ),
        ),
      ),
    );
  }

  SidebarXTheme getSideBarTheme() {
    return SidebarXTheme(
      itemMargin: EdgeInsets.symmetric(
        horizontal: 29.w,
      ),
      selectedItemMargin: EdgeInsets.symmetric(
        horizontal: 29.w,
      ),
      itemTextPadding: EdgeInsets.only(left: 8.w),
      selectedItemTextPadding: EdgeInsets.only(left: 8.w),
      selectedTextStyle: TextStyles.textStyle14.copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: AppColors.kSecondaryColor,
      ),
      textStyle: TextStyles.textStyle14.copyWith(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: Colors.white,
      ),
      width: 220.w,
      height: 662.h,
      margin: EdgeInsets.only(bottom: 10.h, top: 2.5.h),
      padding: EdgeInsets.symmetric(vertical: 17.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.w),
        color: AppColors.kPrimaryColor,
      ),
    );
  }

  final List<Map<String, String>> _items = <Map<String, String>>[
    {
      'label': 'Home',
      'icon': AppIcons.iconsSideBarHome,
    },
    {
      'label': 'Client',
      'icon': AppIcons.iconsSideBarClient,
    },
    {
      'label': 'Management',
      'icon': AppIcons.iconsSideBarLock,
    },
    {
      'label': 'Database',
      'icon': AppIcons.iconsSideBarLock,
    },
  ];

  final List<Map<String, String>> _footerItems = <Map<String, String>>[
    {
      'label': 'Invoice Data',
      'icon': AppIcons.iconsSideBarClient,
    },
    {
      'label': 'Settings',
      'icon': AppIcons.iconsSideBarSettings,
    },
    {
      'label': 'Announcement',
      'icon': AppIcons.iconsSideBarLock,
    },
    {
      'label': 'Client Feedback',
      'icon': AppIcons.iconsSideBarLock,
    },
  ];
}
