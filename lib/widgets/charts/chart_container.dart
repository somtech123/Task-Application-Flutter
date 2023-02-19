import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class ChartBar extends StatelessWidget {
  const ChartBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child:
          // Expanded(
          // child:
          BarChart(
        BarChartData(
          barTouchData: BarTouchData(
            enabled: false,
            touchTooltipData: BarTouchTooltipData(
              tooltipBgColor: Colors.blue,
              tooltipMargin: -10,
            ),
          ),
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: AxisTitles(
              sideTitles: _bottomTiles,
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),
          borderData: FlBorderData(
            show: false,
            border: const Border(
              bottom: BorderSide(),
              left: BorderSide(),
            ),
          ),
          gridData: FlGridData(show: false),
          groupsSpace: 10,
          barGroups: [
            BarChartGroupData(
              x: 6,
              barRods: [
                BarChartRodData(
                  toY: 15,
                  width: 15,
                  color: kskyblecolor,
                  backDrawRodData: BackgroundBarChartRodData(
                    show: true,
                    toY: 20,
                    color: kligthblue,
                  ),
                ),
              ],
            ),
            BarChartGroupData(
              x: 7,
              barRods: [
                BarChartRodData(
                  toY: 9,
                  width: 15,
                  color: korangecolor,
                  backDrawRodData: BackgroundBarChartRodData(
                    show: true,
                    toY: 20,
                    color: kligthblue,
                  ),
                ),
              ],
            ),
            BarChartGroupData(
              x: 8,
              barRods: [
                BarChartRodData(
                  toY: 9,
                  width: 15,
                  color: kpinkcolor,
                  backDrawRodData: BackgroundBarChartRodData(
                    show: true,
                    toY: 20,
                    color: kligthblue,
                  ),
                ),
              ],
            ),
            BarChartGroupData(
              x: 9,
              barRods: [
                BarChartRodData(
                  toY: 12,
                  width: 15,
                  color: kpurplecolor,
                  backDrawRodData: BackgroundBarChartRodData(
                    show: true,
                    toY: 20,
                    color: kligthblue,
                  ),
                ),
              ],
            ),
            BarChartGroupData(
              x: 10,
              barRods: [
                BarChartRodData(
                  toY: 5,
                  width: 15,
                  color: kblueshadecolor,
                  backDrawRodData: BackgroundBarChartRodData(
                    show: true,
                    toY: 20,
                    color: kligthblue,
                  ),
                ),
              ],
            ),
            BarChartGroupData(
              x: 11,
              barRods: [
                BarChartRodData(
                  toY: 8,
                  width: 15,
                  color: kgreencolor,
                  backDrawRodData: BackgroundBarChartRodData(
                    show: true,
                    toY: 20,
                    color: kligthblue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // ),
    );
  }

  SideTitles get _bottomTiles => SideTitles(
        showTitles: true,
        reservedSize: 80,
        getTitlesWidget: (value, meta) {
          String text = '';
          switch (value.toInt()) {
            case 0:
              text = 'Jan';
              break;
            case 1:
              text = 'Feb';
              break;
            case 2:
              text = 'Mar';
              break;
            case 3:
              text = 'Apr';
              break;
            case 4:
              text = 'May';
              break;
            case 5:
              text = 'Jun';
              break;
            case 6:
              text = 'Jul';
              break;
            case 7:
              text = 'Aug';
              break;
            case 8:
              text = 'Sep';
              break;
            case 9:
              text = 'Oct';
              break;
            case 10:
              text = 'Nov';
              break;
            case 11:
              text = 'Dec';
              break;
          }
          return SideTitleWidget(
            axisSide: meta.axisSide,
            child: Text(
              text,
            ),
          );
        },
      );
}
