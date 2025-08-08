import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Image.asset('assets/logo.png'),
        actions: [
          Image.asset('assets/bell.png'),
          SizedBox(width: 20),
          Image.asset('assets/cart.png'),
          SizedBox(width: 20),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        end: Alignment.centerRight,
                        begin: Alignment.centerLeft,
                        colors: [Color(0xffC2D7F2), Colors.white],
                      ),
                    ),
                    child: Text(
                      'Top Services',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
