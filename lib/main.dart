import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final String data = 'Top Secret Data';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(data),
        ),
        body: Level1(data: data),
      ),
    );
  }
}

class Level1 extends StatelessWidget {
  final String data;
  const Level1({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Level2(data: data);
  }
}

class Level2 extends StatelessWidget {
  final String data;
  const Level2({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(),
        Level3(data: data),
      ],
    );
  }
}

class Level3 extends StatelessWidget {
  final String data;
  const Level3({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Text(data);
  }
}
