import 'package:flutter/material.dart';
import 'package:lista/layout.dart';

class ConfigPage extends StatelessWidget {
  static String tag = 'config-page';

  @override
  Widget build(BuildContext context) {
     return Layout.getContent(
        context,
        Center(
          child: Text('Aqui vamos fazer a modificações', style: TextStyle(color: Layout.texto()),),
        ));
  }
}
