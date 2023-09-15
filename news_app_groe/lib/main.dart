import 'package:flutter/material.dart';
import 'package:news_app_groe/Splash%20Screen/splashscreen.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
    );
  }
}
