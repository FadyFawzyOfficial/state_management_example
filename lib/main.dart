import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final String data = 'Top Secret Data';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<String>(
      create: (context) => data,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const MyText(),
          ),
          body: const Level1(),
        ),
      ),
    );
  }
}

class Level1 extends StatelessWidget {
  const Level1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Level2();
  }
}

class Level2 extends StatelessWidget {
  const Level2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        MyTextField(),
        Level3(),
      ],
    );
  }
}

class Level3 extends StatelessWidget {
  const Level3({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<String>(context));
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Needs data');
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField();
  }
}
