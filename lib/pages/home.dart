import 'package:flutter/material.dart';
import 'package:lista/layout.dart';
import 'package:lista/pages/about.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final content = Center(
      child: Column(
        children: <Widget>[
          Text('Hello Word'),
          RaisedButton(
            child: Text('Sobre'),
            onPressed: () {
              Navigator.of(context).pushNamed(AboutPage.tag);
            },
          ),
        ],
      ),
    );
    return Layout.getContent(context, content);
  }
}
