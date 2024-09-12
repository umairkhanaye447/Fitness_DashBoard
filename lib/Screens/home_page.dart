import 'package:fitness_dashboard_ui/Utiles/Responsive.dart';
import 'package:fitness_dashboard_ui/widgets/DashBoardWidget.dart';
import 'package:fitness_dashboard_ui/widgets/SideMenuWidget.dart';
import 'package:fitness_dashboard_ui/widgets/SummaryWidget.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      drawer: !isDesktop
          ? const SizedBox(
              width: 250,
              child: SideMenuWidget(),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const SummaryWidget(),
            )
          : null,
      body: SafeArea(
          child: Row(
        children: [
          if (isDesktop)
           const Expanded(
                flex: 2,
                child: SizedBox(
                  child: SideMenuWidget(),
                )),
       const  Expanded(
            flex: 7,
            child: DashBoardWidget(),
          ),
          if (isDesktop) 
         const Expanded(flex: 3,
          child: SummaryWidget()),
        ],
      )),
    );
  }
}
