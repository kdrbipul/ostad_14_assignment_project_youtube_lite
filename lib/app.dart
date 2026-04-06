import 'package:flutter/material.dart';
import 'package:ostad_14_assignment_project_youtube_lite/presentation/screens/home/home_screen.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
