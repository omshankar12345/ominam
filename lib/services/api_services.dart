import 'dart:convert';

import 'package:flutter_application_1/models/post_model.dart';
import 'package:http/http.dart' as http;

var base = "https://dummyjson.com/products";

getposts() async {
  Uri url = Uri.parse(base);
  var res = await http.get(url);
  try {
    if (res.statusCode == 200) {
      var data = postsModeFromJson(res.body);
      print(data.products);
      return data.products;
    } else {
      print("Error during connection");
    }
  } catch (e) {
    print(e.toString());
  }
}

const apiKey = "fjda";
Future<http.Response> register() {
  return http.post(
    Uri.parse('http://192.168.1.115:8000/register'),
    headers: <String, String>{
      'tiffin-api-key': apiKey,
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'country_code': 00977.toString(),
      'phoneNumber': 9856768372.toString(),
      'firstname': 'Rohit',
      'middlename': 'Kumar',
      'lastname': 'sah',
      'email': 'hgfd@gmail.com',
      'dob': '10/05/200',
      'password': 'jhsfd673873s72hffs83rhfd',
      'confirmPassword': '64236js7'
    }),
  );
}
