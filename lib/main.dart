import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/app_routes.dart';
import 'package:asdc/core/utils/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      const ASDC(),
    );
  });
}

class ASDC extends StatelessWidget {
  const ASDC({super.key});

  @override
  Widget build(BuildContext context) {
    AppConfig.sizeData = MediaQuery.sizeOf(context);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ASDC',
      theme: AppThemes.lightMode,
      routes: AppRoutes.routes,
    );
  }
}
