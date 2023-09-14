import 'package:flutter/material.dart';
import 'package:flutter_application_2/Clicklogin.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter your gmail account ',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)),
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.brown,
                  )),
            ),
            Container(
              height: 25,
            ),
            TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Enter your Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove_red_eye,
                          color: Colors.brown,
                        )))),
            Container(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Clicklogin(),
                      ));
                },
                child: const Text('Login')),
            Container(
              height: 10,
            ),
            TextButton(
                onPressed: () {},
                child: const Text("forgot password?",
                    style: TextStyle(color: Colors.blue))),
            Container(
              height: 10,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'create a new account',
                  style: TextStyle(color: Colors.blue),
                ))
          ],
        ),
      )),
    );
  }
}
