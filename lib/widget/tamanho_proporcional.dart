import 'package:flutter/material.dart';

class TamanhoProporcional extends StatefulWidget {
  const TamanhoProporcional({Key? key}) : super(key: key);

  @override
  State<TamanhoProporcional> createState() => _TamanhoProporcionalState();
}

class _TamanhoProporcionalState extends State<TamanhoProporcional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tamanhos proporcionais"),
      ),
      body: Container(
        color: Colors.orange,
        //Não podemos usar o FractionallySizedBox dentro de um Widget como Column ou Row
        //Pois eles não tem um tamanho definido e aumentam conforme a qttd de itens dentro deles.
        child: FractionallySizedBox(
          widthFactor: 1,
          alignment: Alignment.topLeft,
          child: Text("Tamanhos proporcional"),
        ),
      ),
    );
  }
}
