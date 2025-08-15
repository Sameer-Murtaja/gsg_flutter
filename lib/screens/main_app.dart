import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        backgroundColor: Colors.amber,
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Icon(Icons.settings),
          Icon(Icons.shopping_cart),
          Icon(Icons.home),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/img.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              margin: EdgeInsets.only(bottom: 10, top: 10),
              height: 300,
              width: 300,
            ),
          ],
        ),
      ),
    );
  }
}
