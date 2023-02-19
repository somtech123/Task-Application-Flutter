import 'package:flutter/material.dart';

import 'package:task_app/widgets/bottom_tab.dart';
import '../utils/global_variale.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  late PageController pageController;
  int page = 0;
  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int pag) {
    setState(() {
      page = pag;
    });
  }

  void navigateToTab(int page) {
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          controller: pageController,
          onPageChanged: onPageChanged,
          physics: const NeverScrollableScrollPhysics(),
          children: screenChilderen,
        ),
      ),
      extendBody: true,
      bottomNavigationBar: BottomTab(
        navigateToTab: navigateToTab,
        page: page,
      ),
    );
  }
}
