import 'package:flutter/material.dart';

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
  List<String> quotes = [
    'opportunities don\'t happen, you create',
    'it\'s not late to be what you might have been',
    'Love your family, work super hard, live your passion',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          children: quotes.map((quote) => Text(quote)).toList(),
        ));
  }
}
