// ignore_for_file: file_names, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class Attendance_Monitoring extends StatelessWidget {
  const Attendance_Monitoring({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'images/Attendance monitoring.png'), // عدل مسار الصورة حسب مشروعك
                fit: BoxFit.cover,
              ),
            ),
          ),

          // زر الرجوع
          Positioned(
            top: 30, // المسافة من أعلى الشاشة
            left: 10, // المسافة من اليسار
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black, size: 30),
              onPressed: () {
                Navigator.pop(context); // الرجوع للشاشة السابقة
              },
            ),
          ),

          // اسم الصفحة
          Positioned(
            top: 90,
            right: 0,
            left: 0,
            child: Center(
              child: Text(
                'Attendance Monitoring',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          // المحتوى فوق الخلفية
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PageTemplate(
                          pageTitle: 'One Student Attendance',
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF05B8FB),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  child: const Text(
                    'One Student',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PageTemplate(
                          pageTitle: 'Full Band Attendance',
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF05B8FB),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  child: const Text(
                    'Full Band',
                    style: TextStyle(fontSize: 18, color: Colors.white),
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

// صفحة عامة لعرض اسم الصفحة
class PageTemplate extends StatelessWidget {
  final String pageTitle;

  const PageTemplate({super.key, required this.pageTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Attendance_Rate.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // زر الرجوع
          Positioned(
            top: 30,
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black, size: 30),
              onPressed: () {
                Navigator.pop(context); // الرجوع للشاشة السابقة
              },
            ),
          ),

          // عرض عنوان الصفحة
          Center(
            child: Text(
              pageTitle,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
