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
          title: Text("Rows and Cols in Flutter"),
        ),
        body:
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     Text("Column 1"),
            //     Text("Column 2"),
            //     Text("Column 3")
            //   ],
            // ),
            //   Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            // children: <Widget>[Text("row 1"), Text("row 2"), Text("row 3")],

            Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("row 1"),
            Text("row 2"),
            Text("row 3"),
            Row(
              children: <Widget>[
                Text("Text 4"),
                Text("Text 5"),
                Text("Text 6"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
