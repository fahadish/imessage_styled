import 'package:flutter/material.dart';
import 'package:swipe_deck/swipe_deck.dart';
const images1 = ['apex','cod','destiny','fc3','game_4','ghost','mk11','mk112','nfs','pubg'];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
debugShowCheckedModeBanner: false,
      title: 'Swip Deck',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Swipe Desk'),),
      body: SwipeDeck(startIndex: 3,
        aspectRatio: 2,
        widgets: images1.map((e) => Image.asset('asset/images/$e.jpg',fit: BoxFit.cover,)).toList(),)
    );
  }
}
