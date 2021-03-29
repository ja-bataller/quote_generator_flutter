import 'package:flutter/material.dart';
import 'package:quote_generator/random_quotes.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quote Generator"),
          centerTitle: true,
          backgroundColor: Colors.grey[700],
          elevation: 0.0,
        ),
        body: refreshQuote(),
      ),
    );
  }
}





