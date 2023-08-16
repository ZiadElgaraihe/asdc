import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/features/side_bar/view/widgets/containers/more_info_container.dart';
import 'package:flutter/material.dart';

class MoreInfoGridView extends StatelessWidget {
  MoreInfoGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12.36.h,
        crossAxisSpacing: 12.36.w,
        mainAxisExtent: 75.h,
      ),
      itemCount: 6,
      itemBuilder: (context, index) => MoreInfoContainer(
        title: _moreInfo[index]['title']!,
        info: _moreInfo[index]['info']!,
      ),
    );
  }

  final List<Map<String, String>> _moreInfo = <Map<String, String>>[
    {
      'title': 'Education',
      'info': 'Stanford University',
    },
    {
      'title': 'Languages',
      'info': 'English, Spanish, Italian',
    },
    {
      'title': 'Department',
      'info': 'Product Design',
    },
    {
      'title': 'Work History',
      'info': 'Google, Facebook',
    },
    {
      'title': 'Organization',
      'info': 'Simmmple Web LLC',
    },
    {
      'title': 'Birthday',
      'info': '20 July 1986',
    },
  ];
}
