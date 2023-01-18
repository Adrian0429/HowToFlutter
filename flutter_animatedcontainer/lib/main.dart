import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random rand = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Container"),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
              color: Color.fromARGB(rand.nextInt(256), rand.nextInt(256),
                  rand.nextInt(256), rand.nextInt(256)),
              duration: Duration(seconds: 1),
              width: rand.nextInt(101) + 50.0,
              height: rand.nextInt(101) + 50,
            ),
          ),
        ), 
      ),
    );
  }
}
