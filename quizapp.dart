//  onPressed: () {
//                   setState(() {
//                     numeroQuestaoAtual++;
//                   });
//                 }),


// marcadorPontos.add(Icon(
//                     Icons.check,
//                     color: Colors.green,
//                     size: 36.0,
//                   ));


//  marcadorPontos.add(Icon(
//                     Icons.close,
//                     color: Colors.red,
//                     size: 36.0,
//                   ));

import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: darkBlue,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> marcadorPontos = [];

  List<String> questions = [
    'O metrô é um dos meios de transporte mais seguros do mundo',
    'A culinária brasileira é uma das melhores do mundo.',
    'Vacas podem voar, assim como peixes d\' utilizam os pés para andar.'
  ];

  int numeroQuestaoAtual = 0;

  List<bool> answers = [
    true,
    true,
    false
  ];
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions.elementAt(numeroQuestaoAtual),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
              child: const Text(
                'Verdadeiro',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 20.0,
                ),
              ),
              //NÃO ESQUEÇA
              onPressed: () {
                bool respostaCerta = answers[numeroQuestaoAtual];
                if (respostaCerta ==true) {
                  print('acertou');
                } else {
                  print('errrrrrrouuuu');
                }
                //O usuário clica no botão verdadeiro.
                setState(() {
                  numeroQuestaoAtual++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
              child: const Text(
                'Falso',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white60,
                ),
              ),
              onPressed: () {
                bool respostaCerta = answers[numeroQuestaoAtual];
                if (respostaCerta == false) {
                  print('acertou');
                } else {
                  print('errrrrrrouuuu');
                }
                //O usuário clica no botão falso.
                setState(() {
                 numeroQuestaoAtual++;
                });
              },
            ),
          ),
        ),
        Row(
          children: marcadorPontos,
        )
      ],
    );
  }
}

/*
pergunta1: 'O metrô é um dos meios de transporte mais seguros do mundo', verdadeiro,
pergunta2: 'A culinária brasileira é uma das melhores do mundo.', verdadeiro,
pergunta3: 'Vacas podem voar, assim como peixes utilizam os pés para andar.', falso,
*/
