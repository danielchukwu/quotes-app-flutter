import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Awesome Quotes',
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote('john kindle', 'opportunities don\'t happen, you create'),
    Quote('nathan robinson', 'it\'s not late to be what you might have been'),
    Quote('kobe bryant', 'Love your family, work super hard, live your passion')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        // HEADER
        appBar: AppBar(
          title: const Text(
            'Awesome Quotes',
            style: TextStyle(color: Color.fromARGB(255, 36, 36, 36)),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[100],
          elevation: 0,
        ),

        // BODY
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes
              .map((quote) => QuoteCard(
                    quote: quote,
                    remove: () {
                      setState(() {
                        quotes.remove(quote);
                      });
                    },
                  ))
              .toList(),
        ));
  }
}
