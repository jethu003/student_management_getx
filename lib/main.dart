import 'package:flutter/material.dart';

import 'package:student_management/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFF141619),
        scaffoldBackgroundColor: const Color(0xFF141619),
      ),
      home: const HomeScreen(),
    );
  }
}
