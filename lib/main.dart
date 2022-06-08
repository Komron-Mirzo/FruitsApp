import 'package:flutter/material.dart';
import 'fruits_page.dart';

void main() {
  runApp(const FruitApp());
}

class FruitApp extends StatelessWidget {
  const FruitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: FruitsPage(),
        ),
      ),
    );
  }
}
