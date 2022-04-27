import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Tutorials', home: Main());
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Add Product',
          style: TextStyle(color: Colors.red, fontSize: 28, fontWeight: FontWeight.w900),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Text(
            'Product Information',
            textAlign: TextAlign.end,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),
          Text(
            'Product Image',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Container(
            margin: EdgeInsets.only(top: 22, bottom: 22),
            height: 200,
            child: Center(
              child: Icon(
                Icons.add,
                size: 50,
                color: Colors.blueAccent,
              ),
            ),
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.blue.shade100, border: Border.all(width: 2, color: Colors.blue), borderRadius: BorderRadius.circular(10)),
          ),
          Text(
            'Product Name',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Product ID',
              ),
            ),
          ),
          Text(
            'Product ID',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Product ID',
              ),
            ),
          ),
          Text(
            'Price',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Rp. 500.000.',
              ),
            ),
          ),
          Text(
            'Stock',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '15',
              ),
            ),
          ),
          Text(
            'Description',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 11.0),
                ),
                labelText: 'Enter a description',
              ),
            ),
          ),
          Text(
            'Low Stock Warning',
            textAlign: TextAlign.end,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Text(
            'Change Value to 0 for disable low stock warning ',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '15',
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
