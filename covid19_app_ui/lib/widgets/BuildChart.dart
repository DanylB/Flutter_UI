import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BuildChart extends StatelessWidget {
  const BuildChart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final covidCases = [3.0, 8.0, 6.0, 10.0, 7.0, 12.0, 14.0];
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Text(
              'Daily New Cases',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 50, right: 50),
            height: 200,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: 16,
                barTouchData: BarTouchData(enabled: false),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: SideTitles(
                    margin: 10,
                    showTitles: true,
                    getTextStyles: (double e) {
                      return TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF999FBF),
                      );
                    },
                    getTitles: (double value) {
                      switch (value.toInt()) {
                        case 0:
                          return 'Apr 1';
                        case 1:
                          return 'Apr 2';
                        case 2:
                          return 'Apr 3';
                        case 3:
                          return 'Apr 4';
                        case 4:
                          return 'Apr 5';
                        case 5:
                          return 'Apr 6';
                        case 6:
                          return 'Apr 7';
                        default:
                          return '';
                      }
                    },
                  ),
                  leftTitles: SideTitles(
                      margin: 10,
                      showTitles: true,
                      getTextStyles: (double e) {
                        return TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF999FBF),
                        );
                      },
                      getTitles: (value) {
                        if (value == 0)
                          return '0';
                        else if (value % 3 == 0) {
                          return '${value ~/ 3 * 5}K';
                        }
                        return '';
                      }),
                ),
                gridData: FlGridData(
                  show: true,
                  checkToShowHorizontalLine: (value) => value % 3 == 0,
                  getDrawingHorizontalLine: (value) => FlLine(
                    color: Colors.black12,
                    strokeWidth: 1,
                    dashArray: [5],
                  ),
                ),
                // borderData: FlBorderData(show: false),
                borderData: FlBorderData(
                  border: Border(
                      bottom: BorderSide(
                    color: Color(0xFFDFE3F2),
                  )),
                ),
                barGroups: covidCases
                    .asMap()
                    .map((key, value) => MapEntry(
                          key,
                          BarChartGroupData(
                            x: key,
                            barRods: [
                              BarChartRodData(
                                y: value,
                                colors: [Color(0xFFFF5959)],
                              )
                            ],
                          ),
                        ))
                    .values
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
