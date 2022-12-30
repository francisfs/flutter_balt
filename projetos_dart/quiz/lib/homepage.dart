import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
              Image.asset(
                'assets/images/logo.png',
                width: 250,
                height: 250,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                ),
                child: const Text(
                  'jogar',
                  style: TextStyle(fontSize: 50),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
