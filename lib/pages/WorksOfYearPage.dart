// ignore_for_file: file_names, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class WorksOfYearPage extends StatefulWidget {
  const WorksOfYearPage({super.key});

  @override
  State<WorksOfYearPage> createState() => _WorksOfYearPageState();
}

class _WorksOfYearPageState extends State<WorksOfYearPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _studentCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Works of year.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // المحتوى
          Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 1),

                  // حقل إدخال الكود
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      controller: _studentCodeController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Enter Student Code',
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelStyle: const TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the student code';
                        } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                          return 'Only numbers are allowed';
                        }
                        return null;
                      },
                    ),
                  ),

                  const SizedBox(height: 20),

                  // زر للتأكيد
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // لو الإدخال سليم
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StudentYearWorkPage()),
                        );
                        // روح للصفحة التانية أو نفذ أي حاجة هنا
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF05B8FB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Submit',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
