import 'package:flutter/cupertino.dart';
import 'package:task_app/screens/chart_screen.dart';
import 'package:task_app/screens/home_screen.dart';
import 'package:task_app/screens/post_screen.dart';
import 'package:task_app/screens/settings_screen.dart';

const webscreensize = 600;

List<Widget> screenChilderen = const [
  HomeScreen(),
  PostScreen(),
  ChartScreen(),
  CalenderCard(),
];
