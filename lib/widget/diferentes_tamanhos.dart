import 'package:flutter/material.dart';

class DiferentesTamanhos extends StatefulWidget {
  const DiferentesTamanhos({Key? key}) : super(key: key);

  @override
  State<DiferentesTamanhos> createState() => _DiferentesTamanhosState();
}

class _DiferentesTamanhosState extends State<DiferentesTamanhos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Diferentes tamanhos"),
        ),
        body: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: 200, //50%
                color: Colors.orange,
                child: Text("Item 1"),
              ),
              Container(
                width: 200, //50%
                color: Colors.green,
                child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer fringilla congue augue ac finibus. Sed mollis, velit eu varius fringilla, lectus magna iaculis mauris, vel efficitur risus mi id justo. Aliquam ultricies nisl a semper dictum. Nunc turpis leo, elementum eget libero vel, accumsan mollis leo. Ut mi urna, auctor vel pretium quis, maximus ac eros. Donec malesuada, nisi placerat finibus tristique, risus dolor pellentesque elit, non egestas eros metus eu dolor. Praesent suscipit nulla in risus posuere, sed condimentum tellus posuere."),
              ),
            ],
          ),
        ) //Faz com que os itens fiquem sempre com a maior altura
        );
  }
}
