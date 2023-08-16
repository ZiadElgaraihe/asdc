import 'package:asdc/features/side_bar/view/widgets/side_bar_body_view_body.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class SideBarBodyView extends StatelessWidget {
  const SideBarBodyView({super.key, required this.controller});

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        body: SideBarBodyViewBody(controller: controller),
      ),
    );
  }
}
