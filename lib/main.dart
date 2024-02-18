 import 'package:flutter/material.dart';
import 'package:islami_pr/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName ,
      debugShowCheckedModeBanner: false,
      routes: { HomeScreen.routeName: (context)=> HomeScreen(),
      }
    );
  }
}
