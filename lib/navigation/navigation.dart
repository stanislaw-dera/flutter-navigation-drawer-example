import 'package:flutter/material.dart';
import 'package:navigation_drawer/fragments/first_page.dart';
import 'package:navigation_drawer/fragments/second_page.dart';

class NavigationItem {
  const NavigationItem({required this.name, required this.icon, required this.widget});

  final String name;
  final IconData icon;
  final Widget widget;
}

List<NavigationItem> navigationItems = [
  NavigationItem(name: 'First', icon: Icons.filter_1_rounded, widget: FirstPage()),
  NavigationItem(name: 'Second', icon: Icons.filter_2, widget: SecondPage()),
];