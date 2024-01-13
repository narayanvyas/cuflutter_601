import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'CU 601 App',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(children: [
        Text('Hello World'),
        Text('Hello World'),
        Text('Hello World'),
      ]),
    );
  }
}

// To create Stateful Page - Type stf
// To create Stateless Page - Type stl

// Hot Restart - Shift + r
// Hot Reload - r