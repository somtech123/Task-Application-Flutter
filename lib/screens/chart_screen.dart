import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:task_app/widgets/app_bar_widget.dart';

import 'package:task_app/widgets/charts/chart_widget.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBarWidget(
          text: 'My Efficiency',
          icon: FaIcon(
            FontAwesomeIcons.arrowDown,
            color: Theme.of(context).primaryColor,
            size: 20,
          ),
        ),
      ),
      body: const ChartWidget(),
    );
  }
}
