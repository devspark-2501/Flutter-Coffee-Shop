import 'package:flutter/material.dart';
import 'pages/home_page.dart'; // ✅ ADD THIS

void main() {
  runApp(AppCode());
}

class AppCode extends StatelessWidget {
  const AppCode({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}