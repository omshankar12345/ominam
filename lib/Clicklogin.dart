import 'package:flutter/material.dart';

class Clicklogin extends StatefulWidget {
  @override
  State<Clicklogin> createState() => _ClickloginState();
}

class _ClickloginState extends State<Clicklogin> {
  int index = 0;
  List<Widget> widgetlist = const [
    Text(
      'home',
      style: TextStyle(fontSize: 50),
    ),
    Text(
      'search',
      style: TextStyle(fontSize: 50),
    ),
    Text(
      'notification',
      style: TextStyle(fontSize: 50),
    ),
    Text(
      'Menu',
      style: TextStyle(fontSize: 50),
    ),
    Text(
      'Account',
      style: TextStyle(fontSize: 50),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TIFFIN'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(color: Colors.red),
                child: Text(
                  'WELCOME',
                  style: TextStyle(color: Colors.white),
                )),
            Column(
              children: [
                ListTile(
                    title: const Text('cart'),
                    leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart,
                        ))),
                ListTile(
                    title: const Text('contact'),
                    leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.contact_emergency,
                        ))),
                ListTile(
                    title: const Text('Rating'),
                    leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.rate_review_outlined,
                        ))),
                ListTile(
                    title: const Text('setting'),
                    leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings,
                        ))),
                ListTile(
                    title: const Text('Logout'),
                    leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.logout,
                        )))
              ],
            )
          ],
        ),
      ),
      body: Center(child: widgetlist[index]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'search',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'notification',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_menu),
              label: 'menu',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'account',
              backgroundColor: Colors.red),
        ],
      ),
    );
  }
}
