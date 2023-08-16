import 'package:asdc/features/nav_bar/view/widgets/default_app_bar.dart';
import 'package:asdc/features/nav_bar/view/widgets/nav_bar.dart';
import 'package:asdc/features/side_bar/view/side_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class NavigationBarView extends StatefulWidget {
  const NavigationBarView({super.key});

  static const String id = '/NavigationBarView';

  @override
  State<NavigationBarView> createState() => _NavigationBarViewState();
}

class _NavigationBarViewState extends State<NavigationBarView> {
  final SidebarXController _controller = SidebarXController(
    selectedIndex: 0,
    extended: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(),
      body: SideBarView(controller: _controller),
      bottomNavigationBar: NavBar(controller: _controller),
    );
  }
}
