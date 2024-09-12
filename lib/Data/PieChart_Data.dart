import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartData{
  final piechartSelectionDatas=[
    PieChartSectionData(
      color:Colors.amber ,
      value: 25,
      showTitle: false,
      radius: 25
    ),
      PieChartSectionData(
      color: const Color(0xFF26E5FF),
      value: 20,
      showTitle: false,
      radius: 22,
    ),
    PieChartSectionData(
      color: const Color(0xFFFFCF26),
      value: 10,
      showTitle: false,
      radius: 19,
    ),
    PieChartSectionData(
      color: const Color(0xFFEE2727),
      value: 15,
      showTitle: false,
      radius: 16,
    ),
    PieChartSectionData(
      color: Colors.grey.withOpacity(0.1),
      value: 25,
      showTitle: false,
      radius: 13,
    ),
  ];
}