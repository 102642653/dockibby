import 'package:flutter/material.dart';
import 'package:workos_english/screens/auth/login.dart';
import 'package:workos_english/screens/HomeScreen.dart';
import 'package:workos_english/screens/select.dart';
import 'package:workos_english/screens/auth/register.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter dockibby',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red[100],
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
