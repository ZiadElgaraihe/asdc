import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:asdc/features/side_bar/model/chart_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DailyVisitsChart extends StatelessWidget {
  DailyVisitsChart({super.key});

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
          labelStyle: TextStyles.textStyle14.copyWith(
            fontFamily: GoogleFonts.lato().fontFamily,
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
        series: <ChartSeries>[
          ColumnSeries<ChartData, String>(
            color: const Color(0xFFFFC626),
            name: 'Current Year',
            borderRadius: BorderRadius.circular(7.5.w),
            width: 0.5,
            dataSource: todayChartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
          ),
        ],
      ),
    );
  }

  final List<ChartData> todayChartData = [
    ChartData('07:00', 6),
    ChartData('08:00', 10),
    ChartData('09:00', 8),
    ChartData('10:00', 5),
    ChartData('11:00', 9),
    ChartData('11:30', 8),
    ChartData('12:00', 7),
    ChartData('12:30', 10),
    ChartData('13:00', 8),
    ChartData('14:00', 6),
    ChartData('15:00', 8),
    ChartData('16:00', 10),
    ChartData('17:00', 9),
    ChartData('18:00', 8),
    ChartData('19:00', 5),
  ];
}
