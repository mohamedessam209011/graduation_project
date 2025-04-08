// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_declarations, camel_case_types, use_build_context_synchronously, library_private_types_in_public_api

import 'package:ai_project/pages/OnboardingScreen.dart';
import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'University App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const OnboardingScreen(),
      },
    );
  }
}
