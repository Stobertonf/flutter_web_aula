import 'package:flutter/material.dart';
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
        return Scaffold(
          appBar: largura < 600
              ? PreferredSize(
                  child: MboileAppBar(),
                  preferredSize: Size(largura, alturaBarra),
                )
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(largura, alturaBarra),
                ),
        );
      },
    );
  }
}
