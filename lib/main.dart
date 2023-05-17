import 'package:flutter/material.dart';
import 'package:student_com_app/presentation/ui/screens/choose_house/choose_house_screen.dart';
import 'package:student_com_app/presentation/ui/screens/home/home_screen.dart';
import 'package:student_com_app/presentation/ui/screens/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

