import 'package:asdc/core/utils/app_config.dart';
import 'package:asdc/core/utils/text_styles.dart';
import 'package:asdc/features/side_bar/model/chart_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TotalClientChart extends StatelessWidget {
  TotalClientChart({super.key});

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
          labelStyle: TextStyles.textStyle12.copyWith(
            fontFamily: GoogleFonts.inter().fontFamily,
            fontWeight: FontWeight.w400,
          ),
          majorTickLines: const MajorTickLines(
            color: Colors.transparent,
          ),
          axisLine: const AxisLine(
            color: Colors.transparent,
          ),
        ),
        primaryXAxis: CategoryAxis(
          labelStyle: TextStyles.textStyle12.copyWith(
            fontFamily: GoogleFonts.inter().fontFamily,
            fontWeight: FontWeight.w400,
          ),
          majorTickLines: const MajorTickLines(
            color: Colors.transparent,
          ),
          majorGridLines: const MajorGridLines(
            color: Colors.transparent,
          ),
        ),
        series: <ChartSeries>[
          SplineSeries<ChartData, String>(
              color: Colors.black,
              name: 'Current Year',
              dataSource: currentYearChartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y),
          SplineSeries<ChartData, String>(
              color: const Color(0xFFA8C5DA),
              name: 'Previous Year',
              dataSource: previousYearChartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y)
        ],
      ),
    );
  }

  final List<ChartData> currentYearChartData = [
    ChartData('Jan', 15),
    ChartData('Feb', 10),
    ChartData('Mar', 12),
    ChartData('Apr', 18),
    ChartData('May', 25),
    ChartData('Jun', 30),
    ChartData('Jul', 30),
  ];

  final List<ChartData> previousYearChartData = [
    ChartData('Jan', 10),
    ChartData('Feb', 20),
    ChartData('Mar', 22),
    ChartData('Apr', 18),
    ChartData('May', 12),
    ChartData('Jun', 15),
    ChartData('Jul', 35),
  ];
}
