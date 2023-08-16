import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:asdc/features/side_bar/model/chart_data.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ActivityChart extends StatelessWidget {
  ActivityChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      tooltipBehavior: TooltipBehavior(
        enable: true,
        textStyle: TextStyles.textStyle12,
      ),
      plotAreaBorderColor: Colors.transparent,
      primaryYAxis: NumericAxis(
        maximum: 10,
        axisLabelFormatter: (axisLabelRenderArgs) => ChartAxisLabel(
          '',
          null,
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
        majorTickLines: const MajorTickLines(
          color: Colors.transparent,
        ),
        axisLabelFormatter: (axisLabelRenderArgs) => ChartAxisLabel(
          '',
          null,
        ),
        majorGridLines: const MajorGridLines(
          color: Colors.transparent,
        ),
        axisLine: const AxisLine(
          color: Colors.transparent,
        ),
      ),
      series: <ChartSeries>[
        ColumnSeries<ChartData, String>(
          name: 'Current Year',
          borderRadius: BorderRadius.circular(7.5.w),
          width: 0.4,
          dataSource: dayChartData,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          pointColorMapper: (ChartData data, _) => data.color,
        ),
      ],
    );
  }

  final List<ChartData> dayChartData = [
    ChartData('Sat', 6, const Color(0xFF876AFE)),
    ChartData('Sun', 5, const Color(0xFFFFBC02)),
    ChartData('Mon', 10, const Color(0xFF876AFE)),
    ChartData('Tue', 8, const Color(0xFFFFBC02)),
    ChartData('Wed', 8, const Color(0xFF876AFE)),
    ChartData('Thu', 4, const Color(0xFFFFBC02)),
    ChartData('Fri', 6, const Color(0xFF876AFE)),
  ];
}
