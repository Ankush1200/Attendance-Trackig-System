import 'package:attendence_traking_system/features/auth/views/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attendance Tracking syatem',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:Colors.indigo),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
