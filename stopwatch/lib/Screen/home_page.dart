import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'package:flutter/material.dart';
import 'package:stopwatch/Colors/colors.dart';
import 'package:stopwatch/Watch/countdown.dart';
import 'package:stopwatch/Watch/stopwatch.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentIndex = 0;
  final List<Widget> _pages = const [
    StopWatch(),
    CountDown(),
  ];

  selectPage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.reactCircle,
        initialActiveIndex: currentIndex,
        backgroundColor: primaryColor,
        onTap: (index) => selectPage(index),
        items: [
          buildTabItem(
            icon: Icons.timer_outlined,
            index: 0,
          ),
          buildTabItem(icon: Icons.hourglass_empty, index: 1),
        ],
      ),
      body: _pages[currentIndex],
    );
  }

  TabItem<dynamic> buildTabItem({
    required IconData icon,
    required int index,
  }) {
    return TabItem(
      icon: Icon(
        icon,
        size: 30,
        color: currentIndex == index ? primaryColor : Color(0xFFffafbd),
      ),
    );
  }
}
