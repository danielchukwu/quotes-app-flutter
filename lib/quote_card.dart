import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function remove;

  const QuoteCard({Key? key, required this.quote, required this.remove})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.grey[100],
      elevation: 0.1,
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            TextButton.icon(
              onPressed: () {
                remove();
              },
              icon: const Icon(Icons.delete),
              label: const Text('remove quote'),
              style: TextButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.grey[400],
              ),
            )
          ],
        ),
      ),
    );
  }
}
