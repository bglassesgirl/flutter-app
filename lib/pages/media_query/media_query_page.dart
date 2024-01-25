import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({ super.key });

   @override
   Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    // para descobrir o tamanho especifico de cada tela
    print('largura: ${mediaQuery.size.width}');
    print('altura: ${mediaQuery.size.height}');
    print('orientacao: ${mediaQuery.orientation}');
    print('paddint top: ${mediaQuery.padding.top}');
    print('tamanho app bar defaut: ${kToolbarHeight}');

    // caso  mude o tamaho da appBar se cria um metodo separado
    // e chama esse pra descobrir
    // print('tamanho da app bar: ${AppBar.preferredSize.height}');

    //para deixar a altura da tela embaixo do appBar
    final statusBar = mediaQuery.padding.top;
    final heightBody = mediaQuery.size.height - statusBar- kToolbarHeight;

       return Scaffold(
           appBar: AppBar(title: const Text('MediaQuery'),
           ),
           body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.red,
                  width: mediaQuery.size.width * .50,
                  height: heightBody * .5,
                ),
                 Container(
                  color: Colors.amber,
                  width: mediaQuery.size.width,
                  height: heightBody * .5,
                ),
              ],
            )),
       );
  }
}