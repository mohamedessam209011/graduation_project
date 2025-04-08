// ignore_for_file: file_names, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class Attendance_Monitoring extends StatelessWidget {
  const Attendance_Monitoring({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Works of Year'),
        backgroundColor: Color(0xFF05B8FB),
      ),
      body: Center(
        child: Text(
          'Welcome to Works of Year Page!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
