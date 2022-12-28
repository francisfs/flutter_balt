import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  final String nome = "João";
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int salario = 7000;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          print("clicou");

          setState(() {
            salario = salario + 100;
          });
        },
        child: Text(
          'o salario de ${widget.nome} é $salario',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
