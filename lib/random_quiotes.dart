import 'package:flutter/material.dart';
import 'package:quotes/quotes.dart';
import 'package:clipboard/clipboard.dart';

class refreshQuote extends StatefulWidget {
  @override
  _refreshQuoteState createState() => _refreshQuoteState();
}

class _refreshQuoteState extends State<refreshQuote> {
  String randomQuote = Quotes.getRandom().getContent();
  String author = Quotes.getRandom().getAuthor();

  generateQuote() {
    setState(() {
      randomQuote = Quotes.getRandom().getContent();
      author = Quotes.getRandom().getAuthor();
    });
  }

  copyQuote() {
    setState(() {
      FlutterClipboard.copy(randomQuote + " by " + author).then(( value ) => print('copied'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[850],
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => copyQuote(),
            child: new IconTheme(
              data: new IconThemeData(
                  color: Colors.grey[850]),
              child: new Icon(Icons.copy),
            ),
            backgroundColor: Colors.amberAccent[100],
          ),
          SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            onPressed: () => generateQuote(),
            child: new IconTheme(
              data: new IconThemeData(
                  color: Colors.grey[850]),
              child: new Icon(Icons.refresh),
            ),
            backgroundColor: Colors.amberAccent[100],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text (randomQuote,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Divider(
              height: 50.0,
              color: Colors.amberAccent[100],
            ),
            Center(
              child: Text (author,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
