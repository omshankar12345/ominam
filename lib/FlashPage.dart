import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Clicklogin.dart';
import 'package:flutter_application_2/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FlashPage extends StatelessWidget {
  static const String KEYLOGIN = "login";
  get sharedpreferences => null;

  void wheretogo() async {
    var sharedpref = await sharedpreferences.getinstances();
    var isloggedin = sharedpref.getbool(KEYLOGIN);
  }

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
                        var isloggedin;
                        if (isloggedin != null) {
                          if (isloggedin) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Clicklogin(),
                                ));
                          } else {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ));
                          }
                        } else {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ));
                        }
                      },
                      child: const Text("Continue"))))
        ],
      ),
    ));
  }
}
