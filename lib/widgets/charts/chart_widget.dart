import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../utils/colors.dart';
import 'chart_container.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final heigth = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Center(
              child: CircularPercentIndicator(
                radius: 130,
                animation: true,
                animationDuration: 1200,
                lineWidth: 20.0,
                percent: 0.8,
                center: SizedBox(
                  height: heigth * 10 / 60,
                  child: Column(
                    children: const [
                      Text(
                        "80%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 60.0),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "of task completed",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15.0),
                      ),
                    ],
                  ),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: Theme.of(context).primaryColor,
                progressColor: kgreencolor,
              ),
            ),
          ),
          const ChartBar(),
          Container(
            width: width / 2.5 * 2.2,
            height: heigth / 15,
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: kbluecolor,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'For January',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: kbluecolor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FaIcon(
                  FontAwesomeIcons.angleDown,
                  size: 20,
                  color: kbluecolor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
