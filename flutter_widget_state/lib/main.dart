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
  @override
  int number = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble()),
              ),
              ElevatedButton(
                  onPressed: tekanTombol, child: Text("tambah bilangan"))
            ],
          ),
        ),
      ),
    );
  }

  void tekanTombol() {
    setState(() {
      number++;
    });
  }
}
