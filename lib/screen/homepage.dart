import 'package:flutter/material.dart';
import 'dart:math' show Random;

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ColourChanger"),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}

final colors = [
  Colors.blue,
  Colors.indigo,
  Colors.indigoAccent,
  Colors.yellowAccent,
  Colors.cyanAccent,
  Colors.amberAccent,
  Colors.deepPurpleAccent,
  Colors.deepOrange,
  Colors.yellow,
  Colors.black12,
  Colors.lightGreen,
  Colors.limeAccent,
  Colors.blueGrey
];
final color = colors.getRandomElement();

extension RandomElement<T> on Iterable<T> {
  T getRandomElement() => elementAt(
        Random().nextInt(length),
      );
}
