// import 'dart:math';

import 'package:fitness_dashboard_ui/Data/BarGraphData.dart';
import 'package:fitness_dashboard_ui/Model/GraphModel.dart';
import 'package:fitness_dashboard_ui/widgets/CustomCardWidget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarGraphwidget extends StatelessWidget {
  const BarGraphwidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bargraphdata = BarGraphData();

    return GridView.builder(
      itemCount: bargraphdata.data.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 12.0,
          childAspectRatio: 5 / 4),
      itemBuilder: (context, index) {
        return CustomCard(
            child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  bargraphdata.data[index].label,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                  child: BarChart(BarChartData(
                barGroups: _chartGroups(
                    points: bargraphdata.data[index].graph,
                    color: bargraphdata.data[index].color),
                borderData: FlBorderData(
                  border: const Border(),
                ),
                gridData: const FlGridData(show: false),
                titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              bargraphdata.label[value.toInt()],
                              style: const TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          );
                        },
                      ),
                    ),
                    leftTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false))),
              )))
            ],
          ),
        ));
      },
    );
  }

  List<BarChartGroupData> _chartGroups(
      {required List<GraphModel> points, required Color color}) {
    return points
        .map((point) => BarChartGroupData(x: point.x.toInt(), barRods: [
              BarChartRodData(
                toY: point.y,
                width: 12,
                color: color.withOpacity(point.y.toInt() > 4 ? 1 : 0.4),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(3),
                  topRight: Radius.circular(3),
                ),
              )
            ]))
        .toList();
  }
}
