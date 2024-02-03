import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'CU 601 App',
    home: LoginPage(),
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
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Image.network(
                    'https://cdn.pixabay.com/photo/2023/11/15/15/04/leaves-8390274_1280.jpg',
                    width: 150,
                  ),
                  Container(
                    height: 30,
                  ),
                  Text(
                    'My First Image',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Container(
                width: 30,
              ),
              Column(
                children: [
                  Image.network(
                    'https://cdn.pixabay.com/photo/2023/11/22/18/41/coffee-8406187_1280.jpg',
                    width: 150,
                  ),
                  Container(
                    height: 30,
                  ),
                  Text(
                    'My First Image',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              )
            ],
          ),
          Container(
            height: 60,
          ),
          Text(
            'Hello There',
            style: TextStyle(fontSize: 15),
          ),
          Container(
            height: 60,
          ),
          TextField()
        ],
      ),
    );
  }
}

// To create Stateful Page - Type stf
// To create Stateless Page - Type stl

// Hot Restart - Shift + r
// Hot Reload - r