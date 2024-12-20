import 'package:flutter/material.dart';
import 'package:untitled4/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote1; // We cannot use mutable state inside a stateless widget
  final VoidCallback delete1; // Correct type for the delete function

  QuoteCard({required this.quote1, required this.delete1});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote1.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote1.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton.icon(
              onPressed: delete1, // Use the callback directly
              label: Text('Delete Quote'),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
