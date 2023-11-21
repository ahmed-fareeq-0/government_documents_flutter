import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:government_documents/screens/homeScreen.dart';

import 'screens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: ('inter'),
      ),
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
