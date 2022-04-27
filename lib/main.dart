import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:layoutcrud/Home.dart';
import 'package:layoutcrud/product.dart';
import 'package:layoutcrud/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hello World',
      home: Main(title: 'Main'),
    );
  }
}

class Main extends StatelessWidget {
  final String title;
  const Main({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Product',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Transactions',
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return Home();
            case 1:
              return Product();
            case 2:
              return Transaction();
            default:
              return Home();
          }
        });
  }
}
