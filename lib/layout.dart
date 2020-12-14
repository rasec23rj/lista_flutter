import 'package:flutter/material.dart';
import 'package:lista/pages/about.dart';
import 'package:lista/pages/config.dart';
import 'package:lista/pages/home.dart';

class Layout {
  static int currItem = 0;

  static final pages = [HomePage.tag, AboutPage.tag, ConfigPage.tag];

  static Scaffold getContent(BuildContext context, content) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary(),
        title: Center(
          child: Text('Lista de mercado'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currItem,
          fixedColor: Layout.primary(),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_answer),
              label: 'Sobre',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Configurações',
            ),
          ],
          onTap: (int i) {
            currItem = i;
            Navigator.of(context).pushNamed(pages[i]);
          }),
      body: content,
    );
  }

  static Color primary({opacity: 1.0}) =>
      Color.fromRGBO(217, 102, 144, opacity);

  static Color secundary({opacity: 1.0}) =>
      Color.fromRGBO(242, 141, 188, opacity);

  static Color light({opacity: 2.0}) => Color.fromRGBO(242, 201, 224, opacity);

  static Color dark({opacity: 1.0}) => Color.fromRGBO(1, 28, 38, opacity);

  static Color danger({opacity: 1.0}) => Color.fromRGBO(217, 74, 74, opacity);

  static Color success({opacity: 1.0}) => Color.fromRGBO(6, 166, 74, opacity);

  static Color texto({opacity: 1.0}) => Color.fromRGBO(1, 28, 38, opacity);

  static Color save({opacity: 1.0}) => Color.fromRGBO(136, 232, 242, opacity);
}
