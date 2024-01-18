import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_fundamentos/navegacao/page1.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 4'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               ElevatedButton(onPressed: (){
                // Navigator.of(context).pushAndRemoveUntil(
                //   MaterialPageRoute(
                //     settings: RouteSettings(name: 'page1'),
                //     builder: (context) => Page1(),
                //     ),
                //   ModalRoute.withName('page2'));
                // a de cima remove até uma pagina especifica

                //removendo todas as paginas ATE a pag inicial
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page1'),
                    builder: (context) => Page1(),
                    ),
                  (route) => route.isFirst);

                  //   (route) => false);
                  // este ultimo de cima,false, é indicado para fechar TODA a pilha e ficar
                  // apenar com a atual (pag4), ideal para paginas de login,
                  // onde fecha toda pilha e vai direto para a pagina inicial
               },
                child: Text('page1 via page'),
               ),
               ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Text('pop'),
               ),
               ElevatedButton(onPressed: (){}, child: Text('page1 via named')),
            ],
          ),
        ),
    );
  }
}