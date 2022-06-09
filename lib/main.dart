import 'package:flutter/material.dart';
import 'package:flutter_lessons/lessons_5/lesson_5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LessonFivePage(),
    );
  }
}
