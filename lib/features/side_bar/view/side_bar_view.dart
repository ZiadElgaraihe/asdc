import 'package:asdc/features/side_bar/view/side_bar_body_view.dart';
import 'package:asdc/features/side_bar/view/widgets/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class SideBarView extends StatelessWidget {
  const SideBarView({super.key, required this.controller});

  final SidebarXController controller;

  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawerScrimColor: Colors.transparent,
      drawer: SideBar(controller: controller),
      body: SideBarBodyView(controller: controller),
    );
  }
}
