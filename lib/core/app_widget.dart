import 'package:flutter/material.dart';
import 'package:nlw_5_dev_quiz/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevQuiz',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
