import 'package:flutter/material.dart';
import 'package:flutter_application_2/FlashPage.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
              ),
              const Text(
                "TIFFIN ",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              Container(
                height: 25,
              ),
              const Text(
                "WELCOMES YOU",
                style: TextStyle(
                    fontFamily: 'FontMain',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              Container(
                height: 200,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FlashPage(),
                      ));
                },
                child: const Text("get in"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
