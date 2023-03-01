import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        color: const Color.fromARGB(255, 255, 152, 0),
        child: const Text(
          "Container",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
