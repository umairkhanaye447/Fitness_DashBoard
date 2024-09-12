import 'package:fitness_dashboard_ui/Data/Line_Chart_Data.dart';
import 'package:fitness_dashboard_ui/widgets/CustomCardWidget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineChartsData();
    return CustomCard(
        child: Column(
      children: [
        const Text(
          'Steps Overview',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 20,
        ),
        AspectRatio(
          aspectRatio: 16 / 6,
          child: LineChart(
            LineChartData(
                lineTouchData: const LineTouchData(handleBuiltInTouches: true),
                gridData: const FlGridData(show: false),
                titlesData: FlTitlesData(
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (double value, TitleMeta meta) {
                          return data.bottomTitle[value.toInt()] != null
                              ? SideTitleWidget(
                                  axisSide: meta.axisSide,
                                  child: Text(
                                    data.bottomTitle[value.toInt()].toString(),
                                  ),
                                )
                              : const SizedBox();
                        }),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                        showTitles: true,
                        interval: 1,
                        reservedSize: 40,
                        getTitlesWidget: (double value, TitleMeta meta) {
                          return data.leftTitle[value.toInt()] != null
                              ? SideTitleWidget(
                                  axisSide: meta.axisSide,
                                  child: Text(
                                    data.bottomTitle[value.toInt()].toString(),
                                  ),
                                )
                              : const SizedBox();
                        }),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    color: Color(0xFF88B2AC),
                    barWidth: 2.5,
                    belowBarData: BarAreaData(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Color(0xFF88B2AC).withOpacity(0.5),
                          Colors.transparent  
                        ]), 
                        show: true,
                        ),
                        dotData: const FlDotData(show: false),
                        spots: data.spots,
                  ),
                ],
                minX: 0,
                maxX: 120,
                minY: -5,
                maxY: 105,
                ),
          ),
        )
      ],
    ));
  }
}
