import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_app/utils/colors.dart';

// ignore: must_be_immutable
class BottomTab extends StatelessWidget {
  final Function(int) navigateToTab;
  int page;
  BottomTab({
    super.key,
    required this.navigateToTab,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Container(
      height: size / 12,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            spreadRadius: 0,
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: CupertinoTabBar(
          onTap: navigateToTab,
          backgroundColor: Colors.white,
          activeColor: activeColor,
          inactiveColor: inactiveColor,
          iconSize: size / 30,
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: FaIcon(
                FontAwesomeIcons.houseUser,
                color: page == 0 ? activeColor : inactiveColor,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: FaIcon(
                FontAwesomeIcons.calendarPlus,
                color: page == 1 ? activeColor : inactiveColor,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: FaIcon(
                FontAwesomeIcons.chartSimple,
                color: page == 2 ? activeColor : inactiveColor,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: FaIcon(
                FontAwesomeIcons.sliders,
                color: page == 3 ? activeColor : inactiveColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
