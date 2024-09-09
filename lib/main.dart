import 'package:flutter/material.dart';
// import 'package:rating/presentation/pages/rantingv1.dart';
import 'package:rating/presentation/pages/rantingv2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Rantingv2(),
    );
  }
}
