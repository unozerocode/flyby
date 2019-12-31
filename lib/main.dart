import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
        return MaterialApp(
          title: 'Welcome to Flu3tter',
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Welcome to Flutter'),
            ),
            body:  Center(
            child: RandomWords(),
        ),
      ),
        );
  }
}

class RandomWords extends StatefulWidget {
  @override 
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final List<WordPair> _suggestions = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 18);

  @override 
  Widget build(BuildContext context){
    final WordPair wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}


