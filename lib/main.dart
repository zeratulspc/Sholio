import 'package:flutter/material.dart';

void main() {
  runApp(const Slio());
}

class Slio extends StatelessWidget {
  const Slio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: Center(
          child: Text("Slio"),
        ),
      ),
    );
  }
}
