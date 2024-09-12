import 'package:fitness_dashboard_ui/Model/sidemenu_Model.dart';
import 'package:flutter/material.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 70, horizontal: 20),
      child: Container(
        color: const Color(0xFF171821),
        child: ListView.builder(
          itemCount: data.menu.length,
          itemBuilder: (context, index) => MenuEntry(data, index),
        ),
      ),
    );
  }

  Widget MenuEntry(SideMenuData data, int index) {
    final isSelected = selectedIndex == index;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: isSelected ? Colors.grey : Colors.transparent),
      child: InkWell(
        onTap: () => setState(() {
          selectedIndex = index;
        }),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
              child: Icon(
                data.menu[index].icon,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              data.menu[index].title,
              style: TextStyle(
                  color: isSelected ? Colors.black : Colors.grey,
                  fontSize: 16,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
