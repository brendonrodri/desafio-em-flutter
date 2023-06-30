/* import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//função principal, o app é redenrizado dentro dessa função
void main() {
  //retorna o app na tela
  runApp(PerguntaApp());
}

//classe principal, o conteúdo está contido nela
//extends está passando como herança atributos e métodos do objeto StatelessWidget

class PerguntaApp extends StatelessWidget {
  Widget build(BuildContext context) {
    var n = 0;
    void count() {
      n++;
      print(n);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pesquisa'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            const Text('Texto 1'),
            ElevatedButton(onPressed: count, child: const Text('Resposta 1')),
            ElevatedButton(onPressed: count, child: const Text('Resposta 2')),
            ElevatedButton(
              onPressed: count,
              child: Text('Pergunta 3'),
            )
          ],
        ),
      ),
    );
  }
}
 */

import 'package:flutter/material.dart';
import './questao.dart';
import './buttons.dart';

//função principal, o app é redenrizado dentro dessa função
void main() {
  //retorna o app na tela
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  final perguntas = ['Qual sua cor favorita?', 'Qual seu animal favorito'];
  var _n = 0;
  void _responder() {
    setState(() {
      _n++;
    });
    print(_n);
  }

  String handlePergunta() {
    return perguntas[_n];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pesquisa'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[0]),
            Button('Botão 1'),
            Button('Botão 2'),
            Button('Botão 3'),
          ],
        ),
      ),
    );
  }
//classe principal, o conteúdo está contido nela
//extends está passando como herança atributos e métodos do objeto StatelessWidget
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
