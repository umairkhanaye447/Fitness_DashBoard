import 'package:fitness_dashboard_ui/Data/ScheduleData.dart';
import 'package:fitness_dashboard_ui/widgets/CustomCardWidget.dart';
import 'package:flutter/material.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ScheduleData();
    return Column(
      children: [
        const Text(
          'Schedule',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 12,
        ),
        for (var index = 0; index < data.schedule.length; index++)
          CustomCard(
              color: Colors.black,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.schedule[index].title,
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(data.schedule[index].date,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey)),
                        ],
                      ),
                      const Icon(Icons.more)
                    ],
                  )
                ],
              )),
      ],
    );
  }
}
