import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    List quiz = [
      {
        "pergunta": "Quem descobriu o Brasil?",
        "respostas": [
          "Dom Pedro I",
          "Pedro Álvares Cabral",
          "Tiradentes",
          "Dom Pedro II"
        ],
        "altenativa_correta": 2,
      }
    ];

    quiz.add({
      "pergunta": "O flutter é",
      "respostas": ["Uma linguagem", "Um aplicativo", "Um SDK", "Um notebook"],
      "altenativa_correta": 3,
    });

    int perguntaNumero = 2;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Quiz curso de flutter e dart'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text("Pergunta $perguntaNumero de 10"),
              ),
              Text('Pergunta:\n + ${quiz[perguntaNumero - 1]['pergunta']}',
                  style: const TextStyle(fontSize: 20)),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),
                  child: Text(
                    quiz[perguntaNumero - 1]['respostas'][0],
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),
                  child: Text(
                    quiz[perguntaNumero - 1]['respostas'][1],
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),
                  child: Text(
                    quiz[perguntaNumero - 1]['respostas'][2],
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),
                  child: Text(
                    quiz[perguntaNumero - 1]['respostas'][3],
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
