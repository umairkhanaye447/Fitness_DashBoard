import 'package:fitness_dashboard_ui/Model/GraphModel.dart';
import 'package:flutter/material.dart';

class BarGraphModel{
  final String label;
  final Color color;
  final List<GraphModel> graph;
  BarGraphModel({required this.label, required this.color, required this.graph});
}