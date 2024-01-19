import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_fundamentos/navegacap_parametros/detalhe.dart';

class Lista extends StatelessWidget {
  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('lista'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: (){
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     settings: const RouteSettings(
              //       name: 'detalhe',
              //       arguments: {
              //         'id': 10,
              //       }
              //       ),
              //     builder: (context) => const Detalhe(),
              // ),
              // );
              Navigator.of(context)
              .pushNamed('/detalhe',
                arguments: {'id' : 20});
            },
            child: const Text('detalhes'),
            )
          ]),
      ),
    );
  }
}