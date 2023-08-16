import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/features/side_bar/view/widgets/containers/client_info_container.dart';
import 'package:asdc/features/side_bar/view/widgets/containers/general_info_container.dart';
import 'package:asdc/features/side_bar/view/widgets/containers/notification_container.dart';
import 'package:asdc/features/side_bar/view/widgets/containers/upload_files_container.dart';
import 'package:asdc/features/side_bar/view/widgets/grid_views/more_info_grid_view.dart';
import 'package:flutter/material.dart';

class ClientView extends StatelessWidget {
  const ClientView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          children: [
            const ClientInfoContainer(),
            SizedBox(height: 24.h),
            const GeneralInfoContainer(),
            SizedBox(height: 24.h),
            MoreInfoGridView(),
            SizedBox(height: 24.h),
            const NotificationContainer(),
            SizedBox(height: 24.h),
            const UploadFilesContainer(),
          ],
        ),
      ),
    );
  }
}
