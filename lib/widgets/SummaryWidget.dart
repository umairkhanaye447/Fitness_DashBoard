import 'package:fitness_dashboard_ui/widgets/PieChartWidget.dart';
import 'package:fitness_dashboard_ui/widgets/Schedule_widget.dart';
import 'package:fitness_dashboard_ui/widgets/SummaryDetail.dart';
import 'package:flutter/material.dart';

class SummaryWidget extends StatefulWidget {
  const SummaryWidget({super.key});

  @override
  State<SummaryWidget> createState() => _SummaryWidgetState();
}

class _SummaryWidgetState extends State<SummaryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF21222D),
      ),
      child: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Chart(),
          Text(
            'Summary',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: SummaryDetails(),
          ),
          SizedBox(
            height: 40,
          ),
          ScheduleWidget()
        ],
      ),
    );
  }
}
