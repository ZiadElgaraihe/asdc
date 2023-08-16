import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:asdc/features/side_bar/model/date_time_chart_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class OverallUserActivityChart extends StatelessWidget {
  OverallUserActivityChart({super.key});

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
          axisLabelFormatter: (axisLabelRenderArgs) => ChartAxisLabel(
            '${axisLabelRenderArgs.text}k',
            TextStyles.textStyle10,
          ),
          majorTickLines: const MajorTickLines(
            color: Colors.transparent,
          ),
          majorGridLines: const MajorGridLines(
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
          axisLine: const AxisLine(
            color: Colors.transparent,
          ),
        ),
        series: <ChartSeries>[
          SplineSeries<DateTimeChartData, String>(
            // color: const Color(0xFF1B59F8),
            width: 5.w,
            name: 'Achieved',
            dataSource: achievedChartData,
            xValueMapper: (DateTimeChartData data, _) =>
                DateFormat('MMM').format(data.x),
            yValueMapper: (DateTimeChartData data, _) => data.y,
            pointColorMapper: (DateTimeChartData data, _) => data.color,
          ),
        ],
      ),
    );
  }

  final List<DateTimeChartData> achievedChartData = List.generate(
    12,
    (index) {
      final double opacity = (index + 1) / 12;
      final List<int> yAxisValues = [
        0,
        100,
        50,
        50,
        250,
        100,
        375,
        250,
        225,
        250,
        350,
        400,
      ];
      return DateTimeChartData(
        DateTime(2022, index + 1),
        yAxisValues[index].toDouble(),
        const Color(0xFF1B59F8).withOpacity(opacity),
      );
    },
  );
}
