import 'dart:js';

// rotas nomeadas

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      home: Tela1(),
      routes: {
        '/': (context) => Tela1(),
        '/tela2': ((context) {
          return Tela2();
        })
      },
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('tela1'),
          ),
          body: Center(
            child: ElevatedButton(
              child: Text('Ir para segunda tela'),
              onPressed: () {
                print('clicou no botão da tela 1');

                Navigator.pushNamed(context, '/tela2');
              },
            ),
          ),
        ),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('tela2'),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: ElevatedButton(
              child: Text('retornar tela 1'),
              onPressed: () {
                print('clicou no botão da tela 2');
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
    );
  }
}

class Tela3 extends StatelessWidget {
  const Tela3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
