import 'package:flutter/material.dart';
import 'package:lista/layout.dart';
import 'package:lista/pages/about.dart';
import 'package:lista/pages/config.dart';
import 'package:lista/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final routes = <String, WidgetBuilder>{
    HomePage.tag: (context) => HomePage(),
    AboutPage.tag: (context) => AboutPage(),
    ConfigPage.tag: (context) => ConfigPage()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de mercado',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Layout.primary(),
        accentColor: Layout.secundary(),
        brightness: Brightness.light,
        textTheme: TextTheme(
            headline1: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
            caption: TextStyle(
                fontSize: 36, fontStyle: FontStyle.italic, color: Layout.texto()),
            bodyText1: TextStyle(fontSize: 14)),
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: routes,
    );
  }

}
