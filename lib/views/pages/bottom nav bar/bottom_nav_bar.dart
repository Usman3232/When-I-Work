import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:when_i_work/constants/colors.dart';
import 'package:when_i_work/views/pages/bottom%20nav%20bar/dashboard/dashboard.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List<Widget> pages = [
    DashboardScreen(),
    const Center(
      child: Text("2"),
    ),
    const Center(
      child: Text("3"),
    ),
    const Center(
      child: Text("4"),
    ),
    const Center(
      child: Text("5"),
    )
  ];

  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: AppColors.kaccentColor.withOpacity(.05),
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(FeatherIcons.server),
            title: const Text("Dashboard"),
            selectedColor: AppColors.primaryClr,
          ),
          SalomonBottomBarItem(
            icon: const Icon(FeatherIcons.clipboard),
            title: const Text("Scheduler"),
            selectedColor: AppColors.primaryClr,
          ),
          SalomonBottomBarItem(
            icon: const Icon(FeatherIcons.clock),
            title: const Text("Atttendance"),
            selectedColor: AppColors.primaryClr,
          ),
          SalomonBottomBarItem(
            icon: const Icon(FeatherIcons.inbox),
            title: const Text("Requests"),
            selectedColor: AppColors.primaryClr,
          ),
          SalomonBottomBarItem(
            icon: const Icon(FeatherIcons.menu),
            title: const Text("More"),
            selectedColor: AppColors.primaryClr,
          ),
        ],
      ),
    );
  }
}
