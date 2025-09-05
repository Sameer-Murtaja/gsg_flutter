import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gsg_flutter/routes.dart';
import 'package:http/http.dart';

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<Widget> screens = [Text('Home'), Text('Cart'), Text('Settings')];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text('Login'),
              onTap:
                  () => Navigator.pushReplacementNamed(context, Routes.login),
            ),
            ListTile(
              title: Text('Signup'),
              onTap:
                  () => Navigator.pushReplacementNamed(context, Routes.signup),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('My First App'),
        backgroundColor: Colors.amber,
        actions: [
          Icon(Icons.settings),
          Icon(Icons.shopping_cart),
          Icon(Icons.home),
        ],
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            fetchData();
          }, child: Text('fetch data'))
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            activeIcon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            activeIcon: Icon(Icons.shopping_bag),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
            label: 'settings',
          ),
        ],
      ),
    );
  }


  fetchData()async{
    var response = await get(Uri.parse('https://fakestoreapi.com/products'));
    log(response.body);
  }
  
}
