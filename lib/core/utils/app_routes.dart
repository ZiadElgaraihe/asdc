import 'package:asdc/features/auth/view/log_in_view.dart';
import 'package:asdc/features/nav_bar/view/navigation_bar_view.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  static Map<String, Widget Function(BuildContext context)> routes = {
    '/': (context) => const LogInView(),
    NavigationBarView.id: (context) => const NavigationBarView(),
  };
}
