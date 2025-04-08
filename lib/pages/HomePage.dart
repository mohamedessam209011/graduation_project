// ignore_for_file: prefer_const_constructors

import 'package:ai_project/pages/AttendanceRatePage.dart';
import 'package:ai_project/pages/Attendance_Monitoring.dart';
import 'package:ai_project/pages/Attendance_follow_up.dart';
import 'package:ai_project/pages/Manual_Attendance_Registration.dart';
import 'package:ai_project/pages/Table_doctor.dart';
import 'package:ai_project/pages/TimeTablePage.dart';
import 'package:ai_project/pages/WorksOfYearPage.dart';
import 'package:ai_project/pages/year_work.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String userType;

  const HomePage({super.key, required this.userType});

  @override
  Widget build(BuildContext context) {
    // تحديد الخلفية
    String backgroundImage;
    if (userType == 'Student') {
      backgroundImage = 'images/HOME_student.png'; // خلفية الطلاب
    } else if (userType == 'Doctor') {
      backgroundImage = 'images/Home_doctor.png'; // خلفية الأطباء
    } else if (userType == 'Guardian') {
      backgroundImage = 'images/Home_guardian.png'; // خلفية أولياء الأمور
    } else {
      backgroundImage = 'images/default_background.png'; // خلفية افتراضية
    }

    return Scaffold(
      body: Stack(
        children: [
          // الخلفية
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // الأزرار بناءً على نوع المستخدم

          //زراير الطالب
          if (userType == 'Student') ...[
            // زر "Works of Year"
            Positioned(
              top: 350, // المسافة من الأعلى
              left: 210,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WorksOfYearPage()),
                  );
                },
                child: Container(
                  width: 170,
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF05B8FB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Works of Year',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // زر "Time Table"
            Positioned(
              top: 540,
              right: 230,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TimeTablePage()),
                  );
                },
                child: Container(
                  width: 150,
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF05B8FB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Time Table',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // زر "Attendance Rate"
            Positioned(
              bottom: 50,
              left: 190,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AttendanceRatePage()),
                  );
                },
                child: Container(
                  width: 183,
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF05B8FB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Attendance Rate',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
          // زراير الدكتور
          if (userType == 'Doctor') ...[
            // زر "table"
            Positioned(
              top: 330, // المسافة من الأعلى
              left: 135,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Table_doctor()),
                  );
                },
                child: Container(
                  width: 120,
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF05B8FB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Table',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // زر " Attendance Monitoring"
            Positioned(
              top: 520,
              right: 125,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Attendance_Monitoring()),
                  );
                },
                child: Container(
                  width: 130,
                  height: 75,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF05B8FB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Attendance Monitoring',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // زر "  Manual_Attendance_Registration "
            Positioned(
              bottom: 30,
              left: 110,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Manual_Attendance_Registration()),
                  );
                },
                child: Container(
                  width: 200,
                  height: 70,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF05B8FB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Manual Attendance Registration',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
          //زراير ولي الامر
          if (userType == 'Guardian') ...[
            // زر "year_work"
            Positioned(
              top: 420, // المسافة من الأعلى
              left: 135,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => year_work()),
                  );
                },
                child: Container(
                  width: 115,
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF05B8FB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'year work',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // زر "  Attendance_follow_up "
            Positioned(
              bottom: 80,
              left: 90,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Attendance_follow_up()),
                  );
                },
                child: Container(
                  width: 225,
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF05B8FB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Attendance follow up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
