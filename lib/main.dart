import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Frases Do dia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _numeroAleatorio = 0;
  final List _frases = [
    'A vida e uma caixa preta nunca saberemos o seu real significado.',
    '⁠não deveríamos temer a morte, mais sim a vida.',
    'Faça a pessoa que você gosta se sentir especial ao invés de só mais uma.',
    'Seja estranho. Seja aleatório. Seja quem você é. Porque você nunca sabe quem amaria a pessoa que você esconde.'
  ];

  void _incrementCounter() {
    setState(() {

      _numeroAleatorio = Random().nextInt(4);

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Precione o Botão (+) para gerar uma frase: ',
            ),
            Text(
              _frases[_numeroAleatorio],
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
