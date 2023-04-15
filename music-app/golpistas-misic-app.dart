//TODO: adicionar biblioteca de musica e dicionar as músicas

import 'package:flutter/material.dart';

// ctrl + ; = add selected item as coments
//import 'package:audioplayers/audioplayers.dart';
// create paste assets with music files
// 'nome_arquivo_music.wav1', 'nome_arquivo_music.wav'2, etc
void main() => runApp(Golpistas());

class Golpistas extends StatelessWidget {
  // Criar função com parâmetros de entrada
  void buttonsSounds(int number) {
    // usando arquivo de aúdio
    // instancia do package audioplayers
    //final player = AudioCache();
    //player.play('nome_arquivo_music$number.wav');
    print('Cliquei $number');
  }

  // Colors.pink.shade100
  Expanded buttonConstructor(
      {Color? cor, required int numberSound, required String textButton}) {
    return Expanded(
      child: TextButton(
        // Função anônima
        style: TextButton.styleFrom(backgroundColor: cor),
        onPressed: () {
          buttonsSounds(numberSound);
        },
        child: Text(textButton,
            style: const TextStyle(color: Colors.white54),
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr,
            textScaleFactor: 1.5),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Minhas Golpistas',
                           style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.black12,
          centerTitle: true,
          elevation: 2.5,
        ),

        // Quando quiser mudar a cor do tela de fundo
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
              // Para ocupar todo espaço de tela
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // ele entende que é um container
                buttonConstructor(
                    cor: Colors.purple.shade100,
                    numberSound: 1,
                    textButton: 'Erika Rebeca'),
                buttonConstructor(
                    cor: Colors.purple.shade200,
                    numberSound: 2,
                    textButton: 'Ana Flávia'),
                buttonConstructor(
                    cor: Colors.purple.shade300,
                    numberSound: 3,
                    textButton: 'Isadora Lima'),
                buttonConstructor(
                    cor: Colors.purple.shade400,
                    numberSound: 4,
                    textButton: 'Ana Falkine'),
                buttonConstructor(
                    cor: Colors.purple.shade500,
                    numberSound: 5,
                    textButton: 'Mayara Safada'),
                buttonConstructor(
                    cor: Colors.purple.shade600,
                    numberSound: 6,
                    textButton: 'Isamara Quirino'),
                buttonConstructor(
                    cor: Colors.purple.shade800,
                    numberSound: 7,
                    textButton: 'Raquel Otsuka'),
                buttonConstructor(
                    cor: Colors.purple.shade900,
                    numberSound: 8,
                    textButton: 'Camila Fernandes'),
              ]),
        ),
      ),
    );
  }
}
