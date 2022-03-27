import 'package:flutter/material.dart';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';

class TamanhoTextos extends StatefulWidget {
  const TamanhoTextos({Key? key}) : super(key: key);

  @override
  State<TamanhoTextos> createState() => _TamanhoTextosState();
}

class _TamanhoTextosState extends State<TamanhoTextos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tamanho de textos"),
      ),
      body: Column(
        children: const <Widget>[
          AutoSizeText(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
            "Maecenas mauris urna, pellentesque sed quam eget, interdum semper sem."
            "Nulla feugiat lacus in nisi suscipit interdum."
            "Quisque rhoncus enim nec tempor auctor. Donec tincidunt condimentum sem"
            "semper elementum leo maximus id."
            "Sed ultrices mi nec nisl blandit hendrerit."
            "Morbi et tincidunt enim, nec tempus ex. Nulla tristique sit amet massa ut fermentum.",
            style: TextStyle(fontSize: 30),
            //maxLines: 2, //Define o máximo de linhas
            //minFontSize: 14, //Define o tamanho mínimo da fonte.
            //overflow: TextOverflow.ellipsis, //Acrescenta os ... no final
            //overflowReplacement:Text("Não Coube!!!"), //Acrescenta esse texto se não couber.

            //minFontSize: 14, //Define o tamanho mínimo da fonte.
            //maxLines: 2, //Define o máximo de linhas
            //stepGranularity:10, //Define o tamanho da fonte para onde couber inserir 30 por exe.

            maxLines: 3, //Define o máximo de linhas
            presetFontSizes: [
              30,
              22,
              10,
            ], //Define a ordem e tamanho das fontes. Tamanho máximo 30 min 10.
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
            "Maecenas mauris urna, pellentesque sed quam eget, interdum semper sem."
            "Nulla feugiat lacus in nisi suscipit interdum."
            "Quisque rhoncus enim nec tempor auctor. Donec tincidunt condimentum sem"
            "semper elementum leo maximus id."
            "Sed ultrices mi nec nisl blandit hendrerit."
            "Morbi et tincidunt enim, nec tempus ex. Nulla tristique sit amet massa ut fermentum.",
          ),
        ],
      ),
    );
  }
}
