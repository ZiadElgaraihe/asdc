import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class ClientPhotoStack extends StatelessWidget {
  const ClientPhotoStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 106.h,
          width: 106.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(AppImages.imagesUserPhoto),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          right: AppConfig.sizeData.width >= 600 ? 20.w : 15.w,
          bottom: 5.h,
          child: Container(
            height: 16.h,
            width: 16.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF3DD34C),
              border: Border.all(
                color: Colors.white,
                width: 3.w,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
