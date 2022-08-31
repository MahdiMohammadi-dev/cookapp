import 'package:cookapp/cooking_page.dart';
import 'package:cookapp/main_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CookApp());

class CookApp extends StatelessWidget {
  const CookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const RunPage();
  }
}

class RunPage extends StatelessWidget {
  const RunPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainScreen(),
      ),
    );
  }
}
