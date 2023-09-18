import 'package:flutter/material.dart';
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
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  }
}
