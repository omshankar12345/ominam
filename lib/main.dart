import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_application_2/SplashPage.dart';

void main() {
  runApp(const MyApp());
=======
import 'package:flutter_application_1/models/post_model.dart';
import 'package:flutter_application_1/services/api_services.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'api package',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const MyApp());
  }
>>>>>>> 8d62b441f4547ca33991c56c932e6afa108037c9
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

<<<<<<< HEAD
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: SplashPage());
=======
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Fetching data"),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          register()
              .then((value) => {print(value.body)})
              .catchError((err) => {print(err)});
        }),
        body: FutureBuilder(
            future: getposts(),
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                List<Product> product = snapshot.data;

                return ListView.builder(
                  itemCount: product.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListTile(
                          leading: Image.network(
                            product[index].thumbnail,
                            width: 100,
                          ),
                          title: Text(product[index].title),
                          subtitle: Row(
                            children: [
                              Expanded(child: Text(product[index].description)),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(product[index].price.toString()),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              }
            }));
>>>>>>> 8d62b441f4547ca33991c56c932e6afa108037c9
  }
}
