import 'package:fitness_dashboard_ui/Data/SideMenu_Model.dart';
import 'package:flutter/material.dart';

class SideMenuData{
  final menu=const <MenuModel>[
    MenuModel(icon: Icons.home, title: 'Home'),
    MenuModel(icon: Icons.person, title: 'Profile'),  
    MenuModel(icon: Icons.run_circle, title: 'Exersice'),
    MenuModel(icon: Icons.settings, title: 'Settings'),
    MenuModel(icon: Icons.history, title: 'History'),
    MenuModel(icon: Icons.logout, title: 'SignOut'),
  ];
}