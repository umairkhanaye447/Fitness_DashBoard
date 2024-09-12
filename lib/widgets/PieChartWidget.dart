import 'package:fitness_dashboard_ui/Data/PieChart_Data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    final piechartdata = ChartData();
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: piechartdata.piechartSelectionDatas,
            ),
          ),
           Positioned.fill(child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          const   SizedBox(height: 8,),
             Text('70%',
             style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              height: 0.5,
             ),
             ),
             const SizedBox(height: 8,),
             const Text('of 100%')
          ],),
          )
        ],
      ),
    );
  }
}
