import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_management/getx/student_cotroller.dart';

import 'package:student_management/screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(StudentController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'students app',
      theme: ThemeData(
        primaryColor: const Color(0xFF141619),
        scaffoldBackgroundColor: const Color(0xFF141619),
      ),
      home: const SplashScreen(),
    );
  }
}
