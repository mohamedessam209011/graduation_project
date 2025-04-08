// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TimeTablePage extends StatefulWidget {
  const TimeTablePage({super.key});

  @override
  State<TimeTablePage> createState() => _TimeTablePageState();
}

class _TimeTablePageState extends State<TimeTablePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController studentCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Table_student.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      controller: studentCodeController,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter student code';
                        } else if (!RegExp(r'^\d+$').hasMatch(value)) {
                          return 'Only numbers allowed';
                        }
                        return null;
                      },
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
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StudentTimeTablePage(
                              studentCode: studentCodeController.text,
                            ),
                          ),
                        );
                      }
                    },
                    child: Container(
                      width: 143,
                      height: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF05B8FB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
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

//صفحه اظهار الجدول

class StudentTimeTablePage extends StatelessWidget {
  final String studentCode;

  const StudentTimeTablePage({super.key, required this.studentCode});

  @override
  Widget build(BuildContext context) {
    final Map<String, List<String>> dummyTimeTable = {
      '1234': ['Math - 8AM', 'Science - 10AM', 'History - 12PM'],
      '5678': ['English - 9AM', 'Physics - 11AM', 'Art - 1PM'],
    };

    final List<String>? schedule = dummyTimeTable[studentCode];

    return Scaffold(
      body: Stack(
        children: [
          // الخلفية
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Table_student2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // المحتوى فوق الخلفية
          Center(
            child: schedule == null
                ? const Text(
                    'No schedule found for this student code.',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 300, // ارتفاع مناسب عشان الجدول يظهر في النص
                        child: ListView.builder(
                          itemCount: schedule.length,
                          itemBuilder: (context, index) {
                            return Card(
                              color: Colors.white.withOpacity(0.85),
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 8),
                              child: ListTile(
                                leading: const Icon(Icons.schedule),
                                title: Text(
                                  schedule[index],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
