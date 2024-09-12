import 'package:fitness_dashboard_ui/Data/HealthData.dart';
import 'package:fitness_dashboard_ui/Utiles/Responsive.dart';
import 'package:fitness_dashboard_ui/widgets/CustomCardWidget.dart';
import 'package:flutter/material.dart';

class ActivityDetailCard extends StatelessWidget {
  const ActivityDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetail = HealthData();
    return GridView.builder(
        itemCount: healthDetail.healthData.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
            crossAxisSpacing: Responsive.isMobile(context) ? 12 : 15,
            mainAxisSpacing: 12),
        itemBuilder: (context, index) => CustomCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    healthDetail.healthData[index].icon,
                    width: 30,
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 4),
                    child: Text(
                      healthDetail.healthData[index].title,
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 4),
                    child: Text(
                      healthDetail.healthData[index].value,
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
            ));
  }
}
