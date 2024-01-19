import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/pages/container/container_page.dart';
import 'package:flutter_fundamentos/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      routes: {
        '/':(_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
      },

    );
  }
}
