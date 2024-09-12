
import 'package:fitness_dashboard_ui/Model/healthModel.dart';

class HealthData {
  final healthData = const <HealthModel>[
    HealthModel(
        icon: 'assets/icons/burn.png', title: '305', value: 'Calories Burned'),
    HealthModel(icon: 'assets/icons/steps.png', title: '10,950', value: 'Steps'),
    HealthModel(
        icon: 'assets/icons/distance.png', title: '5k', value: 'Distance'),
    HealthModel(icon: 'assets/icons/sleep.png', title: '6h10m', value: 'sleep')
  ];
}
