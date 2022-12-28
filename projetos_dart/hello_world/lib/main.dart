import 'package:flutter/material.dart';

void main() {
  int valor = 10;
  runApp(MyApp(title: "Aplicativo ola mundo title", valor: valor));
  valor++;
}

class MyApp extends StatelessWidget {
  final String title;
  final int valor;

  const MyApp({super.key, this.title = "", this.valor = 0});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text(
            "olá mundo é $valor",
            style: const TextStyle(fontSize: 50, color: Colors.blueAccent),
          ),
        ),
      ),
    );
  }
}
