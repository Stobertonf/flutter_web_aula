import 'package:flutter/material.dart';
import 'package:flutter_web_aula/loja_virtual.dart';
import 'package:flutter_web_aula/regras.layout.dart';
import 'package:flutter_web_aula/tamanho_textos.dart';
import 'package:flutter_web_aula/responsividade_row_col.dart';
import 'package:flutter_web_aula/responsividade_media_query.dart';

import 'orientacao.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ReponsividadeMediaQuery(),
      // home: ReponsividadeRowCol(),
      // home: ResponsividadeWrap(),
      // home: Orientacao(),
      //home: RegrasLayout(),
      //home: LojarVirtual(),
      home: TamanhoTextos(),
    ),
  );
}
