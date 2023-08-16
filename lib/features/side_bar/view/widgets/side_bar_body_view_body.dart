import 'package:asdc/core/utils/text_styles.dart';
import 'package:asdc/features/side_bar/view/client_view.dart';
import 'package:asdc/features/side_bar/view/home_view.dart';
import 'package:asdc/features/side_bar/view/management_view.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class SideBarBodyViewBody extends StatefulWidget {
  const SideBarBodyViewBody({super.key, required this.controller});

  final SidebarXController controller;

  @override
  State<SideBarBodyViewBody> createState() => _SideBarBodyViewBodyState();
}

class _SideBarBodyViewBodyState extends State<SideBarBodyViewBody> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      _selectedIndex.value = widget.controller.selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _selectedIndex,
      builder: (context, value, child) {
        if (value == 0) {
          return const HomeView();
        } else if (value == 1) {
          return Text(
            'Client',
            style: TextStyles.textStyle25,
          );
        } else if (value == 2) {
          return const ManagementView();
        } else if (value == 3) {
          return Text(
            'Database',
            style: TextStyles.textStyle25,
          );
        } else if (value == 4) {
          return Text(
            'Invoice Data',
            style: TextStyles.textStyle25,
          );
        } else if (value == 5) {
          return Text(
            'Settings',
            style: TextStyles.textStyle25,
          );
        } else if (value == 6) {
          return Text(
            'Announcement',
            style: TextStyles.textStyle25,
          );
        } else if (value == 7) {
          return Text(
            'Client Feedback',
            style: TextStyles.textStyle25,
          );
        } else {
          return const ClientView();
        }
      },
    );
  }
}
