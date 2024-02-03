import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Email', border: OutlineInputBorder()),
            ),
            Container(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Password', border: OutlineInputBorder()),
            ),
            Container(
              height: 30,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
