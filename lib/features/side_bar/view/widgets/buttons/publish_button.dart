import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class PublishButton extends StatelessWidget {
  const PublishButton({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.5.w),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(
          Color(0xFF4318FF),
        ),
        fixedSize: MaterialStatePropertyAll(
          Size(82.8.w, 30.h),
        ),
      ),
      child: Text(
        'Publish now',
        style: TextStyles.textStyle9,
      ),
    );
  }
}
