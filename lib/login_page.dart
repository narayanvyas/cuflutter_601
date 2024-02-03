import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

bool validateForm() {
  if (emailController.text.length < 4) {
    print('Email is incorrect');
    return false;
  } else if (passwordController.text.length < 4) {
    print('Password is too short');
    return false;
  } else {
    return true;
  }
}

void performLogin() {
  if (validateForm()) {
    print('Login Success');
  }
}

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
        child: ListView(
          children: [
            Lottie.network(
                'https://lottie.host/61e94b29-0c4f-4524-b787-927399d289ed/U4Vt6SLuq5.json'),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: 'Email', border: OutlineInputBorder()),
            ),
            Container(
              height: 30,
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: 'Password', border: OutlineInputBorder()),
            ),
            Container(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  performLogin();
                },
                child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
