import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flexible Widget"),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              child: Row(
                children: <Widget>[
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.yellow,
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.amber,
                        margin: EdgeInsets.all(5),
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.purple,
                        margin: EdgeInsets.all(5),
                      )),
                ],
              ),
            ),
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  margin: EdgeInsets.all(5),
                )),
            Flexible(
                flex: 2,
                child: Container(
                  color: Colors.red,
                  margin: EdgeInsets.all(5),
                )),
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  margin: EdgeInsets.all(5),
                )),
          ],
        ),
      ),
    );
  }
}
