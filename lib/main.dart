import 'package:flutter/material.dart';
import 'package:masthlogin2/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
        primaryColor: Colors.brown,
        scaffoldBackgroundColor: Colors.brown[50],
        cardColor: Colors.brown[100],),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
