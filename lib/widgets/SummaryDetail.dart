import 'package:fitness_dashboard_ui/widgets/CustomCardWidget.dart';
import 'package:flutter/material.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        color: Color(0xFF2F353E),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildDetails('cal', '305'),
            buildDetails('step', '600'),
            buildDetails('Distance', '7km'),
            buildDetails('sleep', '7hr')
          ],
        ));
  }

  Widget buildDetails(String key, String value) {
    return Column(
      children: [
        Text(
          key,
          style: TextStyle(fontSize: 11, color: Colors.grey),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          value,
          style: TextStyle(fontSize: 11),
        )
      ],
    );
  }
}
