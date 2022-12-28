import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String numero = '0';
  double primeiroNumero = 0;
  String operacao = '';
  double resultado = 0;
  int resultadoFormatado = 0;

  void calcular(String tecla) {
    switch (tecla) {
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case ',':
        setState(() {
          numero += tecla;
          numero = numero.replaceAll(',', '.');
          if (numero.contains(".")) {
            //double numeroDouble = double.parse(numero);
            //numero = numeroDouble.toString();
          } else {
            int numeroInteiro = int.parse(numero);
            numero = numeroInteiro.toString();
          }
          numero = numero.replaceAll('.', ',');
        });
        break;

      case '+':
      case '-':
      case 'X':
      case '/':
        numero = numero.replaceAll(',', '.');
        operacao = tecla;
        primeiroNumero = double.parse(numero);
        numero = numero.replaceAll('.', ',');
        numero = '0';
        break;

      case '=':
        double resultado = 0;
        /* if (operacao == '+') {
          setState(() {
            resultado = primeiroNumero + double.parse(numero);
            numero = resultado.toString();
          });
        }
        */
        if (operacao == '/') {
          if (double.parse(numero) * 1 == 0) {
            String erro = ('Erro divisão');

            return setState(() {
              numero = erro;
            });
          }
        }

        if (operacao == '+') {
          resultado = primeiroNumero + double.parse(numero);
        }

        if (operacao == '-') {
          resultado = primeiroNumero - double.parse(numero);
        }

        if (operacao == 'X') {
          resultado = primeiroNumero * double.parse(numero);
        }

        if (operacao == '/') {
          resultado = primeiroNumero / double.parse(numero);
        }
        ;

        String resultadoString = resultado.toString();

        List<String> resultadoPartes = resultadoString.split('.');
        if (int.parse(resultadoPartes[1]) * 1 == 0) {
          resultadoFormatado = int.parse(resultadoPartes[0]);
          print(resultadoFormatado);
          setState(() {
            numero = resultadoFormatado.toString();
          });
        } else {
          double resultadoFormatado = resultado;
          setState(() {
            numero = resultadoFormatado.toString().replaceAll('.', ',');
          });
        }
        setState(() {
          numero = resultado.toString();
        });

        break;

      case 'AC':
        setState(() {
          numero = '0';
        });
        break;

      case '<X':
        setState(() {
          if (numero.length > 0) {
            numero = numero.substring(0, numero.length - 1);
          }
        });

        break;

      default:
        setState(() {
          numero += tecla;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green.shade200,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Center(
            child: Text("calculadora"),
          ),
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(numero, style: const TextStyle(fontSize: 72)),
              const Text(''),
              const Text(''),
              const Text('', style: TextStyle(fontSize: 48)),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => calcular('AC'),
                child: const Text(
                  'AC',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              Text(''),
              Text(''),
              GestureDetector(
                onTap: () => calcular('<X'),
                child: Image.asset(
                  'assets/images/back_arrow.png',
                  width: 62,
                  height: 50,
                ),
              ),
            ],
          ),

          //Text('coluna 3'),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            GestureDetector(
              onTap: () {
                calcular('7');
              },
              child: GestureDetector(
                onTap: () => calcular('7'),
                child: Text(
                  '7',
                  style: TextStyle(fontSize: 48),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => calcular('8'),
              child: Text(
                '8',
                style: TextStyle(fontSize: 48),
              ),
            ),
            GestureDetector(
              onTap: () {
                calcular('9');
              },
              child: Text(
                '9',
                style: TextStyle(fontSize: 48),
              ),
            ),
            GestureDetector(
              onTap: () => calcular('/'),
              child: Text(
                '/',
                style: TextStyle(fontSize: 48),
              ),
            ),
          ]),

          //Text('coluna 4'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => calcular('4'),
                child: Text(
                  '4',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () => calcular('5'),
                child: Text(
                  '5',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () => calcular('6'),
                child: Text(
                  '6',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () => calcular('X'),
                child: Text(
                  'X',
                  style: TextStyle(fontSize: 48),
                ),
              ),
            ],
          ),
          //Text('coluna 5'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => calcular('1'),
                child: Text(
                  '1',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () => calcular('2'),
                child: Text(
                  '2',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () => calcular('3'),
                child: Text(
                  '3',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () => calcular('-'),
                child: Text(
                  '-',
                  style: TextStyle(fontSize: 48),
                ),
              ),
            ],
          ),
          //Text('coluna 6'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => calcular('0'),
                child: Text(
                  '0',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () => calcular(','),
                child: Text(
                  ',',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () => calcular('='),
                child: Text(
                  '=',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () => calcular('+'),
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 48),
                ),
              ),
            ],
          ),
          //Text('coluna 6'),
        ]),
      ),
    );
  }
}
