import 'package:flutter/material.dart';
import 'package:flutter_web_aula/widget/item_produto.dart';
import 'package:flutter_web_aula/widget/mobile_app_bar.dart';
import 'package:flutter_web_aula/widget/web_app_bar.dart';

class LojarVirtual extends StatefulWidget {
  const LojarVirtual({Key? key}) : super(key: key);

  @override
  State<LojarVirtual> createState() => _LojarVirtualState();
}

class _LojarVirtualState extends State<LojarVirtual> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        var largura = constraint.maxWidth;
        var alturaBarra = AppBar().preferredSize.height;

        _ajustarVisualizacao(double larguraTela) {
          int colunas = 3;
          if (larguraTela <= 600) {
            colunas = 2;
          } else if (larguraTela <= 960) {
            colunas = 4;
          } else {
            colunas = 6;
          }
          return colunas;
        }

        return Scaffold(
          appBar: largura < 600
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(largura, alturaBarra),
                )
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(largura, alturaBarra),
                ),
          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: GridView.count(
              crossAxisCount: _ajustarVisualizacao(largura),
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              children: [
                ItemProduto("Notebook Acer", "2.500,00", "p1.jpg"),
                ItemProduto("Pnew Goodyear aro 16", "800,00", "p2.jpg"),
                ItemProduto("Samsung 9", "4.100,00", "p3.jpg"),
                ItemProduto("Samsung Edge", "2.150,90", "p4.jpg"),
                ItemProduto("Galaxy 10", "6.200,00", "p5.jpg"),
                ItemProduto("Iphone 10", "1.900,00", "p6.jpg"),
                ItemProduto("Notebook Acer", "2.500,00", "p6.jpg"),
                ItemProduto("Pnew Goodyear aro 16", "800,00", "p5.jpg"),
                ItemProduto("Samsung 9", "4.100,00", "p4.jpg"),
                ItemProduto("Samsung Edge", "2.150,90", "p3.jpg"),
                ItemProduto("Galaxy 10", "6.200,00", "p2.jpg"),
                ItemProduto("Iphone 10", "1.900,00", "p1.jpg"),
              ],
            ),
          ),
        );
      },
    );
  }
}
