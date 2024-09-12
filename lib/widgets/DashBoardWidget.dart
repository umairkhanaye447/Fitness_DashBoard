import 'package:fitness_dashboard_ui/ActivityDetailCard.dart';
import 'package:fitness_dashboard_ui/LineChartCard.dart';
import 'package:fitness_dashboard_ui/Utiles/Responsive.dart';
import 'package:fitness_dashboard_ui/widgets/BarGraphWidget.dart';
import 'package:fitness_dashboard_ui/widgets/SearchWidget.dart';
import 'package:fitness_dashboard_ui/widgets/SummaryWidget.dart';
import 'package:flutter/material.dart';

class DashBoardWidget extends StatelessWidget {
  const DashBoardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            SizedBox(
              height: 18,
            ),
            SearchWidget(),
            SizedBox(
              height: 18,
            ),
            ActivityDetailCard(),
            SizedBox(
              height: 18,
            ),
            LineChartCard(),
            SizedBox(
              height: 18,
            ),
            BarGraphwidget(),
            const SizedBox(height: 18),
            if (Responsive.isTablet(context)) const SummaryWidget(),
          ],
        ),
      ),
    );
  }
}
