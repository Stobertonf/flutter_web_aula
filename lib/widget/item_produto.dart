import 'package:flutter/material.dart';

class ItemProduto extends StatelessWidget {
  String descricao;
  String preco;
  String image;

  ItemProduto(this.descricao, this.preco, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Image.asset(
              "imagens/${this.image}",
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(this.descricao),
          ),
          Expanded(
            flex: 1,
            child: Text(
              "R\$ ${this.preco}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
