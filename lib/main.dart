import 'package:flutter/material.dart';
import 'package:flutter_web_aula/loja_virtual.dart';
import 'package:flutter_web_aula/regras.layout.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_web_aula/tamanho_textos.dart';
import 'package:flutter_web_aula/responsividade_row_col.dart';
import 'package:flutter_web_aula/responsividade_media_query.dart';
import 'orientacao.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) {
        return MaterialApp(
          title: "Flutter Web",
          debugShowCheckedModeBanner: false,
          builder: DevicePreview.appBuilder,
          locale: DevicePreview.locale(context),
        );
      },
    ),
  );
}
