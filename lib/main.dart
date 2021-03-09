import 'package:flutter/material.dart';
import 'package:quotes/quotes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final randomQuote = Quotes.getRandom().getContent();
    final author = Quotes.getRandom().getAuthor();

    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.grey[850],
        appBar: AppBar(
          title: Text("Quote Generator"),
          centerTitle: true,
          backgroundColor: Colors.grey[700],
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(randomQuote);
            print(author);
          },
          child: new IconTheme(
            data: new IconThemeData(
                color: Colors.grey[850]),
            child: new Icon(Icons.refresh),
          ),
          backgroundColor: Colors.amberAccent[100],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: Text (randomQuote,
                  style: TextStyle(
                  color: Colors.white,
                  )
              )
          ),
        ),
      ),
    );
  }
}





