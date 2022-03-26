import 'package:flutter/material.dart';

class ReponsividadeMediaQuery extends StatefulWidget {
  const ReponsividadeMediaQuery({Key? key}) : super(key: key);

  @override
  State<ReponsividadeMediaQuery> createState() =>
      _ReponsividadeMediaQueryState();
}

class _ReponsividadeMediaQueryState extends State<ReponsividadeMediaQuery> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    var alturaBarraStatus = MediaQuery.of(context).padding.top;
    var alturaAppBar = AppBar().preferredSize.height;
    //var larguraItem = largura * 0.25;
    var larguraItem = largura / 3; //50%
    AppBar().preferredSize.height; //Captura a altura da appBar

    return Scaffold(
      appBar: AppBar(
        title: Text('Reponsividade com Flutter'),
      ),
      body: Row(
        children: <Widget>[
          Container(
            width: 200, //50%
            height: altura - alturaAppBar - alturaBarraStatus,
            color: Colors.red,
            child: const Text('Responsividade'),
          ),
          Container(
            width: 200, //50%
            height: altura - alturaAppBar - alturaBarraStatus,
            color: Colors.black,
            child: const Text(
              'Responsividade',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            width: 200, //50%
            height: altura - alturaAppBar - alturaBarraStatus,
            color: Colors.blue,
            child: const Text('Responsividade'),
          ),
        ],
      ),
    );
  }
}
