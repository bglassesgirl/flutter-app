import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/navegacao/page2.dart';
import 'package:flutter_fundamentos/navegacao/page3.dart';
import 'package:flutter_fundamentos/navegacao/page4.dart';
import 'package:flutter_fundamentos/navigations/page1.dart';
import 'navegacao/home_page.dart' as navegacao;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: navegacao.HomePage(),
      routes: {
        '/':(_) => navegacao.HomePage(),
        '/page1':(_) => Page1(),
        '/page2':(_) => Page2(),
        '/page3':(_) => Page3(),
        '/page4':(_) => Page4(),
      },
    );
  }
}
