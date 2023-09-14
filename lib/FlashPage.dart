import 'package:flutter/material.dart';
import 'package:flutter_application_2/LoginPage.dart';

class FlashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              "images/cook.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
              height: 35,
              child: Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      },
                      child: const Text("Continue"))))
        ],
      ),
    ));
  }
}
