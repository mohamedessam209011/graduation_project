// ignore_for_file: file_names, prefer_const_declarations, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

//صفحه نسبه اعمال السنه
class StudentYearWorkPage extends StatelessWidget {
  const StudentYearWorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    // القيم الأساسية
    final double subject1 = 40;
    final double subject2 = 30;
    final double sum = subject1 + subject2;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Works of year'),
        backgroundColor: const Color(0xFF05B8FB),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Percentage of years work',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),

// Pie Chart
          SizedBox(
            height: 250,
            child: PieChart(
              PieChartData(
                sections: [
                  PieChartSectionData(
                    value: subject1,
                    title: 'subject 1',
                    color: Colors.blue,
                    radius: 60,
                    titleStyle:
                        const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  PieChartSectionData(
                    value: subject2,
                    title: 'subject 2',
                    color: Colors.orange,
                    radius: 60,
                    titleStyle:
                        const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  PieChartSectionData(
                    value: sum,
                    title: 'sum',
                    color: Colors.green,
                    radius: 60,
                    titleStyle:
                        const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 30),

          // مفتاح الألوان
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: const [
                LegendItem(color: Colors.blue, label: 'subject 1'),
                LegendItem(color: Colors.orange, label: 'subject 2'),
                LegendItem(color: Colors.green, label: 'sum'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Widget للمفتاح
class LegendItem extends StatelessWidget {
  final Color color;
  final String label;

  const LegendItem({super.key, required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Container(width: 16, height: 16, color: color),
          const SizedBox(width: 8),
          Text(label, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
