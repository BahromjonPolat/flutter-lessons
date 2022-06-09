import 'package:flutter/material.dart';
import 'package:flutter_lessons/lesson_4/lesson_4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LessonFourPage(),
    );
  }
}
