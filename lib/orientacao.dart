import 'package:flutter/material.dart';

class Orientacao extends StatefulWidget {
  const Orientacao({Key? key}) : super(key: key);

  @override
  State<Orientacao> createState() => _OrientacaoState();
}

class _OrientacaoState extends State<Orientacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientação'),
      ),
      body: OrientationBuilder(
        builder: (context, orientacao) {
          /* return Container(
            child: orientacao == Orientation.portrait
                ? Text('Portraint')
                : Text('Landscape'),
            //portrait celular em pé
            //landscape celular deitado
          );*/
          return GridView.count(
            //crossAxisCount: 2, //Qtt de itens a ser exibidos por linha
            crossAxisCount: orientacao == Orientation.portrait ? 2 : 4,
            //Verifica se a orientacao é portrait ou landscape.
            //Se for portrait exibe 2 itens
            //Se for Landscape exibe 4 itens
            children: <Widget>[
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.purple,
              ),
              Container(
                color: Colors.yellow,
              ),
            ],
          );
        },
      ),
    );
  }
}
