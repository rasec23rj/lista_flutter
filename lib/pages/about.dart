import 'package:flutter/material.dart';
import 'package:lista/layout.dart';

class AboutPage extends StatelessWidget {
  static String tag = 'about-page';

  @override
  Widget build(BuildContext context) {
    return Layout.getContent(
        context,
        Center(
          child: Text('App de lista de mercado', style: TextStyle(color: Layout.texto()),),
        ));
  }
}
