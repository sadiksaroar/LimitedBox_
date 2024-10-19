import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('LimitedBox Example'),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 100,
              width: double.infinity,
              child: Center(child: Text('Above LimitedBox')),
            ),
            LimitedBox(
              maxHeight: 150,
              maxWidth: 300,
              child: Container(
                color: Colors.black,
                height:
                    380, // Normally this would expand, but LimitedBox restricts it
                width: 400, // LimitedBox restricts width to 300
                child: Center(child: Text('Inside LimitedBox')),
              ),
            ),
            Container(
              color: Colors.red,
              height: 100,
              width: double.infinity,
              child: Center(child: Text('Below LimitedBox')),
            ),
          ],
        ),
      ),
    );
  }
}
