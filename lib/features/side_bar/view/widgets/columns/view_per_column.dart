import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:asdc/features/side_bar/view/widgets/charts/activity_chart.dart';
import 'package:flutter/material.dart';

class ViewPerColumn extends StatefulWidget {
  const ViewPerColumn({super.key, required this.title});

  final String title;

  @override
  State<ViewPerColumn> createState() => _ViewPerColumnState();
}

class _ViewPerColumnState extends State<ViewPerColumn> {
  final ValueNotifier<bool> _open = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 1.h,
          indent: 40.w,
          endIndent: 40.w,
        ),
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Row(
            children: [
              Text(
                widget.title,
                style: TextStyles.textStyle14.copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  _open.value = !_open.value;
                },
                child: ValueListenableBuilder(
                  valueListenable: _open,
                  builder: (context, value, child) => Icon(
                    value
                        ? Icons.keyboard_arrow_up_rounded
                        : Icons.keyboard_arrow_down_rounded,
                    size: 24.w,
                  ),
                ),
              ),
            ],
          ),
        ),
        ValueListenableBuilder(
          valueListenable: _open,
          builder: (context, value, child) => AnimatedContainer(
            height: value ? 120.h : 0,
            width: 300.w,
            duration: const Duration(milliseconds: 750),
            child: ActivityChart(),
          ),
        ),
      ],
    );
  }
}
