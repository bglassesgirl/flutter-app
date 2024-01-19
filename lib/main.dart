import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/core/navigator_observer_custom.dart';
import 'package:flutter_fundamentos/navegacao_pages/detalhe.dart';
import 'package:flutter_fundamentos/navegacao_pages/detalhe2.dart';
import 'navegacao_pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      navigatorObservers: [NavigatorObserverCustom()],

      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => HomePage(),
          );
        }
         if (settings.name == '/detalhe') {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => DetalhePage(),
          );
        }
      },
      routes: {
        '/': (_) => HomePage(),
        // '/detalhe': (_) => DetalhePage(),
        '/detalhe2': (_) => const Detalhe2(),
      },
    );
  }
}
