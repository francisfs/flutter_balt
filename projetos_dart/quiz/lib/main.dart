import 'package:flutter/material.dart';
import 'package:quiz/homepage.dart';
import 'quiz.dart';

void main() {
  runApp(const Resultado());
}

class Resultado extends StatelessWidget {
  const Resultado({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Quiz curso de flutter e dart'),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Resultado',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Você acertou \n9 de 10 \nperguntas',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                ),
                child: const Text(
                  'jogar novamente',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
