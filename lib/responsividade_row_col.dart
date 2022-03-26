import 'package:flutter/material.dart';

class ReponsividadeRowCol extends StatefulWidget {
  const ReponsividadeRowCol({Key? key}) : super(key: key);

  @override
  State<ReponsividadeRowCol> createState() => _ReponsividadeRowColState();
}

class _ReponsividadeRowColState extends State<ReponsividadeRowCol> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Reponsividade com Flutter'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex:
                2, //Defini a proporção que eu quero ocupar. Espaço Total são 4.
            child: Container(
              width: 200, //50%
              color: Colors.red,
              child: const Text(
                'Primeiro',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 6, //Defini a proporção que eu quero ocupar
            child: Row(
              children: <Widget>[
                Expanded(
                  flex:
                      1, //Defini a proporção que eu quero ocupar. Espaço Total são 4.
                  child: Container(
                    width: 200, //50%
                    color: Colors.pink,
                    child: const Text(
                      'Segundo',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, //Defini a proporção que eu quero ocupar
                  child: Container(
                    width: 200, //50%
                    color: Colors.purple,
                    child: const Text('Terceiro',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  ),
                ),
                Expanded(
                  flex: 1, //Defini a proporção que eu quero ocupar
                  child: Container(
                    width: 200, //50%
                    color: Colors.green,
                    child: const Text('Terceiro',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1, //Defini a proporção que eu quero ocupar
            child: Container(
              width: 200, //50%
              color: Colors.yellow,
              child: const Text('Terceiro',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center),
            ),
          ),
        ],
      ),
    );
  }
}
