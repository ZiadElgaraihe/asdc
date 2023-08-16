import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:asdc/features/side_bar/model/date_time_chart_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ProjectDeliveriesChart extends StatelessWidget {
  ProjectDeliveriesChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 158.h,
      child: SfCartesianChart(
        tooltipBehavior: TooltipBehavior(
          enable: true,
          textStyle: TextStyles.textStyle9.copyWith(
            color: Colors.black,
          ),
          color: Colors.white,
        ),
        plotAreaBorderColor: Colors.transparent,
        primaryYAxis: NumericAxis(
          labelStyle: TextStyles.textStyle10,
          majorTickLines: const MajorTickLines(
            color: Colors.transparent,
          ),
          axisLine: const AxisLine(
            color: Colors.transparent,
          ),
        ),
        primaryXAxis: CategoryAxis(
          labelStyle: TextStyles.textStyle10,
          majorTickLines: const MajorTickLines(
            color: Colors.transparent,
          ),
          majorGridLines: const MajorGridLines(
            color: Colors.transparent,
          ),
        ),
        series: <ChartSeries>[
          SplineSeries<DateTimeChartData, String>(
              color: const Color(0xFFFB896B),
              width: 1.9.w,
              name: 'Achieved',
              dataSource: achievedChartData,
              xValueMapper: (DateTimeChartData data, _) =>
                  '${data.x.year} ${DateFormat('MMM').format(data.x)}',
              yValueMapper: (DateTimeChartData data, _) => data.y),
          SplineSeries<DateTimeChartData, String>(
              color: const Color(0xFF6956E5),
              width: 1.9.w,
              name: 'Target',
              dataSource: targetChartData,
              xValueMapper: (DateTimeChartData data, _) =>
                  '${data.x.year} ${DateFormat('MMM').format(data.x)}',
              yValueMapper: (DateTimeChartData data, _) => data.y)
        ],
      ),
    );
  }

  final List<DateTimeChartData> achievedChartData = [
    DateTimeChartData(DateTime(2021, 10), 6),
    DateTimeChartData(DateTime(2021, 11), 7),
    DateTimeChartData(DateTime(2021, 12), 5),
    DateTimeChartData(DateTime(2022, 1), 8),
    DateTimeChartData(DateTime(2022, 2), 6),
    DateTimeChartData(DateTime(2022, 3), 7),
  ];

  final List<DateTimeChartData> targetChartData = [
    DateTimeChartData(DateTime(2021, 10), 4),
    DateTimeChartData(DateTime(2021, 11), 6),
    DateTimeChartData(DateTime(2021, 12), 3),
    DateTimeChartData(DateTime(2022, 1), 5),
    DateTimeChartData(DateTime(2022, 2), 7),
    DateTimeChartData(DateTime(2022, 3), 4),
  ];
}
