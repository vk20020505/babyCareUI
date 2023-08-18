import 'package:flutter/material.dart';
import 'package:myproject/screens/home.dart';
// import 'screens.dart/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 225, 236, 255),
            foregroundColor: Colors.black38),
        // navigationBarTheme: NavigationBarThemeData(backgroundColor: Colors.red),
      ),
      debugShowCheckedModeBanner: false,
      home: const home(),
    );
  }
}
