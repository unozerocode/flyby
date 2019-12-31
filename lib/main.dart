import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();

    print(wordPair);
    
        return MaterialApp(
          title: 'Welcome to Flu3tter',
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Welcome to Flutter'),
            ),
            body:  Center(
          child: Text(wordPair.asPascalCase), // wordPair.asPascalCase
        ),
      ),
        );
  }
}
