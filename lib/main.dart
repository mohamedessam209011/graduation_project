// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

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
      home: OnboardingScreen(),
    );
  }
}

//اول شاشه
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الصورة الخلفية
          Image.asset(
            'images/background.png', // مسار الصورة
            fit: BoxFit.cover, // تغطية الشاشة بالكامل
            width: double.infinity, // عرض الصورة
            height: double.infinity, // ارتفاع الصورة
          ),
          // العناصر فوق الصورة
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 350), // مسافة بين النص والزر
                // Container بدل زر NEXT
                GestureDetector(
                  onTap: () {
                    // الانتقال للشاشة التالية
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    );
                  },
                  child: Container(
                    width: 386,
                    padding: const EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF33BEF1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'NEXT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
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

// شاشة الترحيب
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الصورة الخلفية
          Image.asset(
            'images/page_two_bg.png', // مسار الصورة
            fit: BoxFit.cover, // تغطية الشاشة بالكامل
            width: double.infinity,
            height: double.infinity,
          ),
          // العناصر فوق الصورة
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40), // مسافة بين النص والأزرار
              ],
            ),
          ),
          // زر Student تحت صورة الولد
          Positioned(
            top: 320, // المسافة من الأعلى
            left: 185, // المسافة من اليسار
            child: GestureDetector(
              onTap: () {
                // الانتقال لصفحة تسجيل الطالب
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginScreen(userType: 'Student')),
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
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Student',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // زر Doctor
          Positioned(
            top: 530, // المسافة من الأعلى
            right: 200, // المسافة من اليسار
            child: GestureDetector(
              onTap: () {
                // الانتقال لصفحة تسجيل الدكتور
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginScreen(userType: 'Doctor')),
                );
              },
              child: Container(
                width: 183, // عرض الزر
                height: 50, // ارتفاع الزر
                padding: const EdgeInsets.all(10), // المسافة الداخلية
                decoration: ShapeDecoration(
                  color: const Color(0xFF05B8FB), // لون الخلفية
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // زوايا مدورة
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Doctor', // نص الزر
                      style: TextStyle(
                        color: Colors.white, // لون النص
                        fontSize: 24, // حجم النص
                        fontFamily: 'Inter', // نوع الخط
                        fontWeight: FontWeight.w700, // سمك الخط
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // زر Guardian
          Positioned(
            top: 740, // المسافة من الأعلى
            left: 185, // المسافة من اليسار
            child: GestureDetector(
              onTap: () {
                // الانتقال لصفحة تسجيل ولي الأمر
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginScreen(userType: 'Guardian')),
                );
              },
              child: Container(
                width: 183, // عرض الزر
                height: 50, // ارتفاع الزر
                padding: const EdgeInsets.all(10), // المسافة الداخلية
                decoration: ShapeDecoration(
                  color: const Color(0xFF05B8FB), // لون الخلفية
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // زوايا مدورة
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Guardian', // نص الزر
                      style: TextStyle(
                        color: Colors.white, // لون النص
                        fontSize: 24, // حجم النص
                        fontFamily: 'Inter', // نوع الخط
                        fontWeight: FontWeight.w700, // سمك الخط
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// صفحه ال لوجين

class LoginScreen extends StatefulWidget {
  final String userType;

  const LoginScreen({super.key, required this.userType});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;
  bool _isLoading = false;

  Future<bool> _simulateServerLogin(String email, String password) async {
    await Future.delayed(Duration(seconds: 2));
    // يمكنك تخصيص البريد وكلمة المرور بناءً على نوع المستخدم
    if (widget.userType == 'Student') {
      return email == "1@.com" && password == "123456";
    } else if (widget.userType == 'Doctor') {
      return email == "1@.com" && password == "123456";
    } else if (widget.userType == 'Guardian') {
      return email == "1@.com" && password == "123456";
    }
    return false;
  }

  void _login() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      bool isSuccess = await _simulateServerLogin(
        _emailController.text,
        _passwordController.text,
      );

      setState(() {
        _isLoading = false;
      });

      if (isSuccess) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(userType: widget.userType)),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Invalid email or password'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  void _forgotPassword() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية المشتركة لكل المستخدمين
          Image.asset(
            'images/login_page.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // عبارة "Login as"
                      Text(
                        'Login as ${widget.userType}',
                        style: TextStyle(
                          color: const Color(0xFF33BEF1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      // حقل إدخال البريد الإلكتروني
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.8),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!value.contains('@')) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      // حقل إدخال كلمة المرور مع علامة الإظهار
                      TextFormField(
                        controller: _passwordController,
                        obscureText: !_isPasswordVisible,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.8),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      // زر "Forgot Password"
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: _forgotPassword,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      // زر تسجيل الدخول أو مؤشر تحميل
                      _isLoading
                          ? CircularProgressIndicator()
                          : GestureDetector(
                              onTap: _login,
                              child: Container(
                                width: 363,
                                padding: const EdgeInsets.all(10),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF33BEF1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Login',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ForgotPasswordScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية
          Image.asset(
            'images/forgot_password.png', // استبدل بالمسار الخاص بالصورة
            fit: BoxFit.cover, // لجعل الصورة تغطي الشاشة بالكامل
            width: double.infinity,
            height: double.infinity,
          ),
          // المحتوى
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 70),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                  ),
                ),
                SizedBox(height: 40),
                GestureDetector(
                  onTap: () {
                    String email = _emailController.text;
                    RegExp emailRegex = RegExp(
                        r'^[a-zA-Z0-9.a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
                    if (!emailRegex.hasMatch(email)) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please enter a valid email address'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResetPasswordScreen()),
                      );
                    }
                  },
                  child: Container(
                    width: 183, // عرض الزر
                    height: 50, // ارتفاع الزر
                    decoration: ShapeDecoration(
                      color: const Color(0xFF33BEF1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _isPasswordHidden = true;
  bool _isConfirmPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية
          Image.asset(
            'images/reset_password.png', // استبدل بمسار الخلفية الصحيح
            fit: BoxFit.cover, // لجعل الصورة تغطي الشاشة بالكامل
            width: double.infinity,
            height: double.infinity,
          ),
          // المحتوى
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 70),
                // حقل إدخال كلمة المرور
                TextField(
                  controller: _passwordController,
                  obscureText: _isPasswordHidden,
                  decoration: InputDecoration(
                    labelText: 'New Password',
                    labelStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordHidden
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordHidden = !_isPasswordHidden;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // حقل تأكيد كلمة المرور
                TextField(
                  controller: _confirmPasswordController,
                  obscureText: _isConfirmPasswordHidden,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isConfirmPasswordHidden
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isConfirmPasswordHidden = !_isConfirmPasswordHidden;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 40),
                // زر Reset Password
                GestureDetector(
                  onTap: () {
                    String newPassword = _passwordController.text.trim();
                    String confirmPassword =
                        _confirmPasswordController.text.trim();

                    if (newPassword.isEmpty || confirmPassword.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please fill in both fields'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    } else if (newPassword.length < 6) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content:
                              Text('Password must be at least 6 characters'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    } else if (newPassword != confirmPassword) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Passwords do not match'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Password reset successfully!'),
                          backgroundColor: Colors.green,
                        ),
                      );
                      Navigator.pop(context); // الرجوع إلى الشاشة السابقة
                    }
                  },
                  child: Container(
                    width: 183, // عرض الزر
                    height: 50, // ارتفاع الزر
                    decoration: ShapeDecoration(
                      color: const Color(0xFF33BEF1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Reset Password',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
                    MaterialPageRoute(builder: (context) => Table()),
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

//صفح زرااير الطالب
class WorksOfYearPage extends StatefulWidget {
  const WorksOfYearPage({super.key});

  @override
  State<WorksOfYearPage> createState() => _WorksOfYearPageState();
}

class _WorksOfYearPageState extends State<WorksOfYearPage> {
  String? selectedTerm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Works of year.png'), // مسار الصورة
                fit: BoxFit.cover,
              ),
            ),
          ),

          // المحتوى
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 1), // مسافة من الأعلى

                // حقل إدخال الكود
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
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

                // Dropdown
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: selectedTerm,
                      hint: const Text(
                        'choose',
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: ['first term', 'second term'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          selectedTerm = newValue!;
                        });
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Inquiry Button (من غير Positioned)
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StudentYearWorkPage(),
                      ),
                    );
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
                        'Inquiry',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StudentYearWorkPage extends StatelessWidget {
  const StudentYearWorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('أعمال السنة'),
        backgroundColor: const Color(0xFF05B8FB),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'نسبة أعمال السنة',
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
                    value: 40,
                    title: 'امتحان شهري',
                    color: Colors.blue,
                    radius: 60,
                    titleStyle:
                        const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  PieChartSectionData(
                    value: 30,
                    title: 'واجبات',
                    color: Colors.orange,
                    radius: 60,
                    titleStyle:
                        const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  PieChartSectionData(
                    value: 20,
                    title: 'مشروع',
                    color: Colors.green,
                    radius: 60,
                    titleStyle:
                        const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  PieChartSectionData(
                    value: 10,
                    title: 'مشاركة',
                    color: Colors.purple,
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
                LegendItem(color: Colors.blue, label: 'امتحان شهري'),
                LegendItem(color: Colors.orange, label: 'واجبات'),
                LegendItem(color: Colors.green, label: 'مشروع'),
                LegendItem(color: Colors.purple, label: 'مشاركة'),
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

//صفح زرااير الطالب
class TimeTablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Table'),
      ),
      body: Center(
        child: Text(
          'This is the Time Table Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

// صفح زرااير الطالب
class AttendanceRatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance Rate'),
      ),
      body: Center(
        child: Text(
          'This is the Attendance Rate Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

//صفح زراير الدكتور
class Table extends StatelessWidget {
  const Table({super.key});

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

//صفح زراير الدكتور
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

//صفح زراير الدكتور
class Manual_Attendance_Registration extends StatelessWidget {
  const Manual_Attendance_Registration({super.key});

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

//صفح زراير ولي الامر
class year_work extends StatelessWidget {
  const year_work({super.key});

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

//صفح زراير ولي الامر
class Attendance_follow_up extends StatelessWidget {
  const Attendance_follow_up({super.key});

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
