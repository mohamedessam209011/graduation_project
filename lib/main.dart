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

//اول شاشه
// class OnboardingScreen extends StatelessWidget {
//   const OnboardingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // الصورة الخلفية
//           Image.asset(
//             'images/background.png', // مسار الصورة
//             fit: BoxFit.cover, // تغطية الشاشة بالكامل
//             width: double.infinity, // عرض الصورة
//             height: double.infinity, // ارتفاع الصورة
//           ),
//           // العناصر فوق الصورة
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(height: 350), // مسافة بين النص والزر
//                 // Container بدل زر NEXT
//                 GestureDetector(
//                   onTap: () {
//                     // الانتقال للشاشة التالية
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => WelcomeScreen()),
//                     );
//                   },
//                   child: Container(
//                     width: 386,
//                     padding: const EdgeInsets.all(10),
//                     decoration: ShapeDecoration(
//                       color: const Color(0xFF33BEF1),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                     ),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                           'NEXT',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 24,
//                             fontFamily: 'Inter',
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// شاشة الترحيب
// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // الصورة الخلفية
//           Image.asset(
//             'images/page_two_bg.png', // مسار الصورة
//             fit: BoxFit.cover, // تغطية الشاشة بالكامل
//             width: double.infinity,
//             height: double.infinity,
//           ),
//           // العناصر فوق الصورة
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(height: 40), // مسافة بين النص والأزرار
//               ],
//             ),
//           ),
//           // زر Student تحت صورة الولد
//           Positioned(
//             top: 320, // المسافة من الأعلى
//             left: 185, // المسافة من اليسار
//             child: GestureDetector(
//               onTap: () {
//                 // الانتقال لصفحة تسجيل الطالب
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => LoginScreen(userType: 'Student')),
//                 );
//               },
//               child: Container(
//                 width: 183,
//                 height: 50,
//                 padding: const EdgeInsets.all(10),
//                 decoration: ShapeDecoration(
//                   color: const Color(0xFF05B8FB),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Student',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 24,
//                         fontFamily: 'Inter',
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           // زر Doctor
//           Positioned(
//             top: 530, // المسافة من الأعلى
//             right: 200, // المسافة من اليسار
//             child: GestureDetector(
//               onTap: () {
//                 // الانتقال لصفحة تسجيل الدكتور
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => LoginScreen(userType: 'Doctor')),
//                 );
//               },
//               child: Container(
//                 width: 183, // عرض الزر
//                 height: 50, // ارتفاع الزر
//                 padding: const EdgeInsets.all(10), // المسافة الداخلية
//                 decoration: ShapeDecoration(
//                   color: const Color(0xFF05B8FB), // لون الخلفية
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20), // زوايا مدورة
//                   ),
//                 ),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Doctor', // نص الزر
//                       style: TextStyle(
//                         color: Colors.white, // لون النص
//                         fontSize: 24, // حجم النص
//                         fontFamily: 'Inter', // نوع الخط
//                         fontWeight: FontWeight.w700, // سمك الخط
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           // زر Guardian
//           Positioned(
//             top: 740, // المسافة من الأعلى
//             left: 185, // المسافة من اليسار
//             child: GestureDetector(
//               onTap: () {
//                 // الانتقال لصفحة تسجيل ولي الأمر
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => LoginScreen(userType: 'Guardian')),
//                 );
//               },
//               child: Container(
//                 width: 183, // عرض الزر
//                 height: 50, // ارتفاع الزر
//                 padding: const EdgeInsets.all(10), // المسافة الداخلية
//                 decoration: ShapeDecoration(
//                   color: const Color(0xFF05B8FB), // لون الخلفية
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20), // زوايا مدورة
//                   ),
//                 ),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Guardian', // نص الزر
//                       style: TextStyle(
//                         color: Colors.white, // لون النص
//                         fontSize: 24, // حجم النص
//                         fontFamily: 'Inter', // نوع الخط
//                         fontWeight: FontWeight.w700, // سمك الخط
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// صفحه ال لوجين

// class LoginScreen extends StatefulWidget {
//   final String userType;

//   const LoginScreen({super.key, required this.userType});

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   bool _isPasswordVisible = false;
//   bool _isLoading = false;

//   Future<bool> _simulateServerLogin(String email, String password) async {
//     await Future.delayed(Duration(seconds: 2));
//     // يمكنك تخصيص البريد وكلمة المرور بناءً على نوع المستخدم
//     if (widget.userType == 'Student') {
//       return email == "1@.com" && password == "123456";
//     } else if (widget.userType == 'Doctor') {
//       return email == "1@.com" && password == "123456";
//     } else if (widget.userType == 'Guardian') {
//       return email == "1@.com" && password == "123456";
//     }
//     return false;
//   }

//   void _login() async {
//     if (_formKey.currentState!.validate()) {
//       setState(() {
//         _isLoading = true;
//       });

//       bool isSuccess = await _simulateServerLogin(
//         _emailController.text,
//         _passwordController.text,
//       );

//       setState(() {
//         _isLoading = false;
//       });

//       if (isSuccess) {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//               builder: (context) => HomePage(userType: widget.userType)),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Invalid email or password'),
//             backgroundColor: Colors.red,
//           ),
//         );
//       }
//     }
//   }

//   void _forgotPassword() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // الخلفية المشتركة لكل المستخدمين
//           Image.asset(
//             'images/login_page.png',
//             fit: BoxFit.cover,
//             width: double.infinity,
//             height: double.infinity,
//           ),
//           Center(
//             child: SingleChildScrollView(
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Form(
//                   key: _formKey,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       // عبارة "Login as"
//                       Text(
//                         'Login as ${widget.userType}',
//                         style: TextStyle(
//                           color: const Color(0xFF33BEF1),
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       // حقل إدخال البريد الإلكتروني
//                       TextFormField(
//                         controller: _emailController,
//                         decoration: InputDecoration(
//                           labelText: 'Email',
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           filled: true,
//                           fillColor: Colors.white.withOpacity(0.8),
//                         ),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your email';
//                           }
//                           if (!value.contains('@')) {
//                             return 'Please enter a valid email';
//                           }
//                           return null;
//                         },
//                       ),
//                       SizedBox(height: 20),
//                       // حقل إدخال كلمة المرور مع علامة الإظهار
//                       TextFormField(
//                         controller: _passwordController,
//                         obscureText: !_isPasswordVisible,
//                         decoration: InputDecoration(
//                           labelText: 'Password',
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           filled: true,
//                           fillColor: Colors.white.withOpacity(0.8),
//                           suffixIcon: IconButton(
//                             icon: Icon(
//                               _isPasswordVisible
//                                   ? Icons.visibility
//                                   : Icons.visibility_off,
//                             ),
//                             onPressed: () {
//                               setState(() {
//                                 _isPasswordVisible = !_isPasswordVisible;
//                               });
//                             },
//                           ),
//                         ),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your password';
//                           }
//                           if (value.length < 6) {
//                             return 'Password must be at least 6 characters';
//                           }
//                           return null;
//                         },
//                       ),
//                       SizedBox(height: 10),
//                       // زر "Forgot Password"
//                       Align(
//                         alignment: Alignment.centerRight,
//                         child: TextButton(
//                           onPressed: _forgotPassword,
//                           child: Text(
//                             'Forgot Password?',
//                             style: TextStyle(color: Colors.blue),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       // زر تسجيل الدخول أو مؤشر تحميل
//                       _isLoading
//                           ? CircularProgressIndicator()
//                           : GestureDetector(
//                               onTap: _login,
//                               child: Container(
//                                 width: 363,
//                                 padding: const EdgeInsets.all(10),
//                                 decoration: ShapeDecoration(
//                                   color: const Color(0xFF33BEF1),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(20),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   mainAxisSize: MainAxisSize.min,
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       'Login',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 24,
//                                         fontFamily: 'Inter',
//                                         fontWeight: FontWeight.w800,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ForgotPasswordScreen extends StatelessWidget {
//   final TextEditingController _emailController = TextEditingController();

//   ForgotPasswordScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // الخلفية
//           Image.asset(
//             'images/forgot_password.png', // استبدل بالمسار الخاص بالصورة
//             fit: BoxFit.cover, // لجعل الصورة تغطي الشاشة بالكامل
//             width: double.infinity,
//             height: double.infinity,
//           ),
//           // المحتوى
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(height: 70),
//                 TextField(
//                   controller: _emailController,
//                   decoration: InputDecoration(
//                     labelText: 'Email',
//                     labelStyle: TextStyle(color: Colors.grey),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     filled: true,
//                     fillColor: Colors.white.withOpacity(0.8),
//                   ),
//                 ),
//                 SizedBox(height: 40),
//                 GestureDetector(
//                   onTap: () {
//                     String email = _emailController.text;
//                     RegExp emailRegex = RegExp(
//                         r'^[a-zA-Z0-9.a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
//                     if (!emailRegex.hasMatch(email)) {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('Please enter a valid email address'),
//                           backgroundColor: Colors.red,
//                         ),
//                       );
//                     } else {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => ResetPasswordScreen()),
//                       );
//                     }
//                   },
//                   child: Container(
//                     width: 183, // عرض الزر
//                     height: 50, // ارتفاع الزر
//                     decoration: ShapeDecoration(
//                       color: const Color(0xFF33BEF1),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(40),
//                       ),
//                     ),
//                     child: Center(
//                       child: Text(
//                         'continue',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ResetPasswordScreen extends StatefulWidget {
//   const ResetPasswordScreen({super.key});

//   @override
//   _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
// }

// class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _confirmPasswordController =
//       TextEditingController();
//   bool _isPasswordHidden = true;
//   bool _isConfirmPasswordHidden = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // الخلفية
//           Image.asset(
//             'images/reset_password.png', // استبدل بمسار الخلفية الصحيح
//             fit: BoxFit.cover, // لجعل الصورة تغطي الشاشة بالكامل
//             width: double.infinity,
//             height: double.infinity,
//           ),
//           // المحتوى
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(height: 70),
//                 // حقل إدخال كلمة المرور
//                 TextField(
//                   controller: _passwordController,
//                   obscureText: _isPasswordHidden,
//                   decoration: InputDecoration(
//                     labelText: 'New Password',
//                     labelStyle: TextStyle(color: Colors.grey),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     filled: true,
//                     fillColor: Colors.white.withOpacity(0.8),
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                         _isPasswordHidden
//                             ? Icons.visibility
//                             : Icons.visibility_off,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           _isPasswordHidden = !_isPasswordHidden;
//                         });
//                       },
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 // حقل تأكيد كلمة المرور
//                 TextField(
//                   controller: _confirmPasswordController,
//                   obscureText: _isConfirmPasswordHidden,
//                   decoration: InputDecoration(
//                     labelText: 'Confirm Password',
//                     labelStyle: TextStyle(color: Colors.grey),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     filled: true,
//                     fillColor: Colors.white.withOpacity(0.8),
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                         _isConfirmPasswordHidden
//                             ? Icons.visibility
//                             : Icons.visibility_off,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           _isConfirmPasswordHidden = !_isConfirmPasswordHidden;
//                         });
//                       },
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 40),
//                 // زر Reset Password
//                 GestureDetector(
//                   onTap: () {
//                     String newPassword = _passwordController.text.trim();
//                     String confirmPassword =
//                         _confirmPasswordController.text.trim();

//                     if (newPassword.isEmpty || confirmPassword.isEmpty) {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('Please fill in both fields'),
//                           backgroundColor: Colors.red,
//                         ),
//                       );
//                     } else if (newPassword.length < 6) {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content:
//                               Text('Password must be at least 6 characters'),
//                           backgroundColor: Colors.red,
//                         ),
//                       );
//                     } else if (newPassword != confirmPassword) {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('Passwords do not match'),
//                           backgroundColor: Colors.red,
//                         ),
//                       );
//                     } else {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('Password reset successfully!'),
//                           backgroundColor: Colors.green,
//                         ),
//                       );
//                       Navigator.pop(context); // الرجوع إلى الشاشة السابقة
//                     }
//                   },
//                   child: Container(
//                     width: 183, // عرض الزر
//                     height: 50, // ارتفاع الزر
//                     decoration: ShapeDecoration(
//                       color: const Color(0xFF33BEF1),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(40),
//                       ),
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Reset Password',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   final String userType;

//   const HomePage({super.key, required this.userType});

//   @override
//   Widget build(BuildContext context) {
//     // تحديد الخلفية
//     String backgroundImage;
//     if (userType == 'Student') {
//       backgroundImage = 'images/HOME_student.png'; // خلفية الطلاب
//     } else if (userType == 'Doctor') {
//       backgroundImage = 'images/Home_doctor.png'; // خلفية الأطباء
//     } else if (userType == 'Guardian') {
//       backgroundImage = 'images/Home_guardian.png'; // خلفية أولياء الأمور
//     } else {
//       backgroundImage = 'images/default_background.png'; // خلفية افتراضية
//     }

//     return Scaffold(
//       body: Stack(
//         children: [
//           // الخلفية
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(backgroundImage),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           // الأزرار بناءً على نوع المستخدم

//           //زراير الطالب
//           if (userType == 'Student') ...[
//             // زر "Works of Year"
//             Positioned(
//               top: 350, // المسافة من الأعلى
//               left: 210,
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => WorksOfYearPage()),
//                   );
//                 },
//                 child: Container(
//                   width: 170,
//                   height: 50,
//                   padding: const EdgeInsets.all(10),
//                   decoration: ShapeDecoration(
//                     color: const Color(0xFF05B8FB),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Works of Year',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             // زر "Time Table"
//             Positioned(
//               top: 540,
//               right: 230,
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => TimeTablePage()),
//                   );
//                 },
//                 child: Container(
//                   width: 150,
//                   height: 50,
//                   padding: const EdgeInsets.all(10),
//                   decoration: ShapeDecoration(
//                     color: const Color(0xFF05B8FB),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Time Table',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             // زر "Attendance Rate"
//             Positioned(
//               bottom: 50,
//               left: 190,
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => AttendanceRatePage()),
//                   );
//                 },
//                 child: Container(
//                   width: 183,
//                   height: 50,
//                   padding: const EdgeInsets.all(10),
//                   decoration: ShapeDecoration(
//                     color: const Color(0xFF05B8FB),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Attendance Rate',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//           // زراير الدكتور
//           if (userType == 'Doctor') ...[
//             // زر "table"
//             Positioned(
//               top: 330, // المسافة من الأعلى
//               left: 135,
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => Table_doctor()),
//                   );
//                 },
//                 child: Container(
//                   width: 120,
//                   height: 50,
//                   padding: const EdgeInsets.all(10),
//                   decoration: ShapeDecoration(
//                     color: const Color(0xFF05B8FB),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Table',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             // زر " Attendance Monitoring"
//             Positioned(
//               top: 520,
//               right: 125,
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => Attendance_Monitoring()),
//                   );
//                 },
//                 child: Container(
//                   width: 130,
//                   height: 75,
//                   padding: const EdgeInsets.all(10),
//                   decoration: ShapeDecoration(
//                     color: const Color(0xFF05B8FB),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Attendance Monitoring',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             // زر "  Manual_Attendance_Registration "
//             Positioned(
//               bottom: 30,
//               left: 110,
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => Manual_Attendance_Registration()),
//                   );
//                 },
//                 child: Container(
//                   width: 200,
//                   height: 70,
//                   padding: const EdgeInsets.all(10),
//                   decoration: ShapeDecoration(
//                     color: const Color(0xFF05B8FB),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Manual Attendance Registration',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//           //زراير ولي الامر
//           if (userType == 'Guardian') ...[
//             // زر "year_work"
//             Positioned(
//               top: 420, // المسافة من الأعلى
//               left: 135,
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => year_work()),
//                   );
//                 },
//                 child: Container(
//                   width: 115,
//                   height: 50,
//                   padding: const EdgeInsets.all(10),
//                   decoration: ShapeDecoration(
//                     color: const Color(0xFF05B8FB),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'year work',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             // زر "  Attendance_follow_up "
//             Positioned(
//               bottom: 80,
//               left: 90,
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => Attendance_follow_up()),
//                   );
//                 },
//                 child: Container(
//                   width: 225,
//                   height: 50,
//                   padding: const EdgeInsets.all(10),
//                   decoration: ShapeDecoration(
//                     color: const Color(0xFF05B8FB),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Attendance follow up',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ],
//       ),
//     );
//   }
// }

// صفحه اعمال السنه
// class WorksOfYearPage extends StatefulWidget {
//   const WorksOfYearPage({super.key});

//   @override
//   State<WorksOfYearPage> createState() => _WorksOfYearPageState();
// }

// class _WorksOfYearPageState extends State<WorksOfYearPage> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _studentCodeController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // الخلفية
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('images/Works of year.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           // المحتوى
//           Center(
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const SizedBox(height: 1),

//                   // حقل إدخال الكود
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 30),
//                     child: TextFormField(
//                       controller: _studentCodeController,
//                       keyboardType: TextInputType.number,
//                       decoration: InputDecoration(
//                         labelText: 'Enter Student Code',
//                         filled: true,
//                         fillColor: Colors.white.withOpacity(0.8),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         labelStyle: const TextStyle(
//                           color: Colors.black54,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter the student code';
//                         } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
//                           return 'Only numbers are allowed';
//                         }
//                         return null;
//                       },
//                     ),
//                   ),

//                   const SizedBox(height: 20),

//                   // زر للتأكيد
//                   ElevatedButton(
//                     onPressed: () {
//                       if (_formKey.currentState!.validate()) {
//                         // لو الإدخال سليم
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => StudentYearWorkPage()),
//                         );
//                         // روح للصفحة التانية أو نفذ أي حاجة هنا
//                       }
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFF05B8FB),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                     ),
//                     child: const Text(
//                       'Submit',
//                       style: TextStyle(fontSize: 18),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// //صفحه نسبه اعمال السنه
// class StudentYearWorkPage extends StatelessWidget {
//   const StudentYearWorkPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // القيم الأساسية
//     final double subject1 = 40;
//     final double subject2 = 30;
//     final double sum = subject1 + subject2;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Works of year'),
//         backgroundColor: const Color(0xFF05B8FB),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Text(
//             'Percentage of years work',
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 30),

// // Pie Chart
//           SizedBox(
//             height: 250,
//             child: PieChart(
//               PieChartData(
//                 sections: [
//                   PieChartSectionData(
//                     value: subject1,
//                     title: 'subject 1',
//                     color: Colors.blue,
//                     radius: 60,
//                     titleStyle:
//                         const TextStyle(fontSize: 14, color: Colors.white),
//                   ),
//                   PieChartSectionData(
//                     value: subject2,
//                     title: 'subject 2',
//                     color: Colors.orange,
//                     radius: 60,
//                     titleStyle:
//                         const TextStyle(fontSize: 14, color: Colors.white),
//                   ),
//                   PieChartSectionData(
//                     value: sum,
//                     title: 'sum',
//                     color: Colors.green,
//                     radius: 60,
//                     titleStyle:
//                         const TextStyle(fontSize: 14, color: Colors.white),
//                   ),
//                 ],
//               ),
//             ),
//           ),

//           const SizedBox(height: 30),

//           // مفتاح الألوان
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               children: const [
//                 LegendItem(color: Colors.blue, label: 'subject 1'),
//                 LegendItem(color: Colors.orange, label: 'subject 2'),
//                 LegendItem(color: Colors.green, label: 'sum'),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// // Widget للمفتاح
// class LegendItem extends StatelessWidget {
//   final Color color;
//   final String label;

//   const LegendItem({super.key, required this.color, required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4),
//       child: Row(
//         children: [
//           Container(width: 16, height: 16, color: color),
//           const SizedBox(width: 8),
//           Text(label, style: const TextStyle(fontSize: 16)),
//         ],
//       ),
//     );
//   }
// }

//صفحه الجدول
// class TimeTablePage extends StatefulWidget {
//   const TimeTablePage({super.key});

//   @override
//   State<TimeTablePage> createState() => _TimeTablePageState();
// }

// class _TimeTablePageState extends State<TimeTablePage> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController studentCodeController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // الخلفية
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('images/Table_student.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Center(
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const SizedBox(height: 1),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 30),
//                     child: TextFormField(
//                       controller: studentCodeController,
//                       keyboardType: TextInputType.number,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter student code';
//                         } else if (!RegExp(r'^\d+$').hasMatch(value)) {
//                           return 'Only numbers allowed';
//                         }
//                         return null;
//                       },
//                       decoration: InputDecoration(
//                         labelText: 'Enter Student Code',
//                         filled: true,
//                         fillColor: Colors.white.withOpacity(0.8),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         labelStyle: const TextStyle(
//                           color: Colors.black54,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   GestureDetector(
//                     onTap: () {
//                       if (_formKey.currentState!.validate()) {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => StudentTimeTablePage(
//                               studentCode: studentCodeController.text,
//                             ),
//                           ),
//                         );
//                       }
//                     },
//                     child: Container(
//                       width: 143,
//                       height: 50,
//                       padding: const EdgeInsets.all(10),
//                       decoration: ShapeDecoration(
//                         color: const Color(0xFF05B8FB),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                       ),
//                       child: const Center(
//                         child: Text(
//                           'Submit',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// //صفحه اظهار الجدول

// class StudentTimeTablePage extends StatelessWidget {
//   final String studentCode;

//   const StudentTimeTablePage({super.key, required this.studentCode});

//   @override
//   Widget build(BuildContext context) {
//     final Map<String, List<String>> dummyTimeTable = {
//       '1234': ['Math - 8AM', 'Science - 10AM', 'History - 12PM'],
//       '5678': ['English - 9AM', 'Physics - 11AM', 'Art - 1PM'],
//     };

//     final List<String>? schedule = dummyTimeTable[studentCode];

//     return Scaffold(
//       body: Stack(
//         children: [
//           // الخلفية
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('images/Table_student2.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           // المحتوى فوق الخلفية
//           Center(
//             child: schedule == null
//                 ? const Text(
//                     'No schedule found for this student code.',
//                     style: TextStyle(fontSize: 18, color: Colors.black),
//                   )
//                 : Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const SizedBox(height: 20),
//                       SizedBox(
//                         height: 300, // ارتفاع مناسب عشان الجدول يظهر في النص
//                         child: ListView.builder(
//                           itemCount: schedule.length,
//                           itemBuilder: (context, index) {
//                             return Card(
//                               color: Colors.white.withOpacity(0.85),
//                               margin: const EdgeInsets.symmetric(
//                                   horizontal: 30, vertical: 8),
//                               child: ListTile(
//                                 leading: const Icon(Icons.schedule),
//                                 title: Text(
//                                   schedule[index],
//                                   style: const TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// صفحه الغياب

// class AttendanceRatePage extends StatefulWidget {
//   @override
//   State<AttendanceRatePage> createState() => _AttendanceRatePageState();
// }

// class _AttendanceRatePageState extends State<AttendanceRatePage> {
//   final TextEditingController answerController = TextEditingController();
//   int num1 = 0;
//   int num2 = 0;
//   String? errorText;

//   @override
//   void initState() {
//     super.initState();
//     generateNewQuestion();
//   }

//   void generateNewQuestion() {
//     final random = Random();
//     setState(() {
//       num1 = random.nextInt(10) + 1; // من 1 لـ 10
//       num2 = random.nextInt(10) + 1;
//       answerController.clear();
//       errorText = null;
//     });
//   }

//   void _checkAnswer() {
//     final String userAnswer = answerController.text.trim();
//     final int? parsedAnswer = int.tryParse(userAnswer);

//     if (parsedAnswer == (num1 + num2)) {
//       // صح
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (context) => SuccessPage(onReturn: generateNewQuestion)),
//       );
//     } else {
//       // غلط
//       setState(() {
//         errorText = 'Wrong answer, please try again!';
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // الخلفية
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('images/Attendance_Rate.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           // المحتوى
//           Center(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 30),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Solve this: $num1 + $num2 = ?',
//                     style: const TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   TextField(
//                     controller: answerController,
//                     keyboardType: TextInputType.number,
//                     decoration: InputDecoration(
//                       hintText: 'Enter your answer',
//                       filled: true,
//                       fillColor: Colors.white.withOpacity(0.9),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       errorText: errorText,
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   GestureDetector(
//                     onTap: _checkAnswer,
//                     child: Container(
//                       width: 143,
//                       height: 50,
//                       padding: const EdgeInsets.all(10),
//                       decoration: ShapeDecoration(
//                         color: const Color(0xFF05B8FB),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                       ),
//                       child: const Center(
//                         child: Text(
//                           'Submit',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// //صفحه نسبه حضور و غياب الطالب
// class SuccessPage extends StatelessWidget {
//   final VoidCallback onReturn;

//   const SuccessPage({super.key, required this.onReturn});

//   @override
//   Widget build(BuildContext context) {
//     final List<Map<String, dynamic>> attendanceData = [
//       {
//         'subject': 'Math',
//         'present': 10,
//         'absent': 2,
//       },
//       {
//         'subject': 'Science',
//         'present': 15,
//         'absent': 0,
//       },
//       {
//         'subject': 'History',
//         'present': 8,
//         'absent': 1,
//       },
//     ];

//     return Scaffold(
//       body: Stack(
//         children: [
//           // الخلفية
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('images/Attendance_Rate.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           // زر الرجوع
//           Positioned(
//             top: 40,
//             left: 10,
//             child: IconButton(
//               icon: const Icon(Icons.arrow_back, size: 30, color: Colors.black),
//               onPressed: () {
//                 onReturn();
//                 Navigator.pop(context);
//               },
//             ),
//           ),

//           // المحتوى
//           Padding(
//             padding: const EdgeInsets.only(top: 80, left: 16, right: 16),
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 120,
//                 ),
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: attendanceData.length,
//                     itemBuilder: (context, index) {
//                       final item = attendanceData[index];
//                       final total = item['present'] + item['absent'];
//                       final rate = total == 0
//                           ? 0.0
//                           : (item['present'] / total * 100).toStringAsFixed(1);
//                       final presentRatio =
//                           total == 0 ? 0.0 : item['present'] / total;
//                       final absentRatio =
//                           total == 0 ? 0.0 : item['absent'] / total;

//                       return Card(
//                         color: Colors.white.withOpacity(0.9),
//                         margin: const EdgeInsets.symmetric(vertical: 8),
//                         child: Padding(
//                           padding: const EdgeInsets.all(12),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               ListTile(
//                                 contentPadding: EdgeInsets.zero,
//                                 leading: const Icon(Icons.check_circle,
//                                     color: Colors.green),
//                                 title: Text(item['subject']),
//                                 trailing: Text(
//                                   '$rate %',
//                                   style: const TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 16,
//                                   ),
//                                 ),
//                                 onTap: () {
//                                   showDialog(
//                                     context: context,
//                                     builder: (_) => AlertDialog(
//                                       shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(15),
//                                       ),
//                                       title: Text('تفاصيل ${item['subject']}'),
//                                       content: Column(
//                                         mainAxisSize: MainAxisSize.min,
//                                         children: [
//                                           Text(
//                                               '✅ الحضور: ${item['present']} مرات'),
//                                           Text(
//                                               '❌ الغياب: ${item['absent']} مرات'),
//                                         ],
//                                       ),
//                                       actions: [
//                                         TextButton(
//                                           onPressed: () =>
//                                               Navigator.pop(context),
//                                           child: const Text('إغلاق'),
//                                         ),
//                                       ],
//                                     ),
//                                   );
//                                 },
//                               ),
//                               const SizedBox(height: 8),
//                               Row(
//                                 children: [
//                                   Expanded(
//                                     flex: (presentRatio * 100).round(),
//                                     child: Container(
//                                       height: 8,
//                                       decoration: BoxDecoration(
//                                         color: Colors.green,
//                                         borderRadius: BorderRadius.circular(5),
//                                       ),
//                                     ),
//                                   ),
//                                   Expanded(
//                                     flex: (absentRatio * 100).round(),
//                                     child: Container(
//                                       height: 8,
//                                       decoration: BoxDecoration(
//                                         color: Colors.red,
//                                         borderRadius: BorderRadius.circular(5),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Table_doctor extends StatelessWidget {
//   const Table_doctor({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // الخلفية
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('images/Table_doctor.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           // المحتوى فوق الخلفية
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => AllTablePage()),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFF05B8FB),
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 40, vertical: 16),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                   ),
//                   child: const Text(
//                     'ALL Table',
//                     style: TextStyle(fontSize: 18, color: Colors.white),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => OneTablePage()),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFF05B8FB),
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 40, vertical: 16),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                   ),
//                   child: const Text(
//                     'One Table',
//                     style: TextStyle(fontSize: 18, color: Colors.white),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // صفحات مؤقتة علشان الزرين يشتغلوا
// class AllTablePage extends StatelessWidget {
//   const AllTablePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('All Tables'),
//         backgroundColor: Color(0xFF05B8FB),
//       ),
//       body: const Center(
//         child: Text('This is the ALL Table Page'),
//       ),
//     );
//   }
// }

// class OneTablePage extends StatelessWidget {
//   const OneTablePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('One Table'),
//         backgroundColor: Color(0xFF05B8FB),
//       ),
//       body: const Center(
//         child: Text('This is the ONE Table Page'),
//       ),
//     );
//   }
// }

//صفح زراير الدكتور
// class Attendance_Monitoring extends StatelessWidget {
//   const Attendance_Monitoring({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Works of Year'),
//         backgroundColor: Color(0xFF05B8FB),
//       ),
//       body: Center(
//         child: Text(
//           'Welcome to Works of Year Page!',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }

//صفح زراير الدكتور
// class Manual_Attendance_Registration extends StatelessWidget {
//   const Manual_Attendance_Registration({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Works of Year'),
//         backgroundColor: Color(0xFF05B8FB),
//       ),
//       body: Center(
//         child: Text(
//           'Welcome to Works of Year Page!',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }

//صفح زراير ولي الامر
// class year_work extends StatelessWidget {
//   const year_work({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Works of Year'),
//         backgroundColor: Color(0xFF05B8FB),
//       ),
//       body: Center(
//         child: Text(
//           'Welcome to Works of Year Page!',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }

//صفح زراير ولي الامر
// class Attendance_follow_up extends StatelessWidget {
//   const Attendance_follow_up({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Works of Year'),
//         backgroundColor: Color(0xFF05B8FB),
//       ),
//       body: Center(
//         child: Text(
//           'Welcome to Works of Year Page!',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }
