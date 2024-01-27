import 'dart:ffi';

import 'package:flutter/material.dart';

class BotoesRotacaoTexto extends StatelessWidget {
  const BotoesRotacaoTexto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões e rotação de texto'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const RotatedBox(
              quarterTurns: -1,
              child: Text('Luana Braga'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Salvar'),
              style: TextButton.styleFrom(
                  primary: Colors.deepOrange,
                  // minimumSize: Size(width, height),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  )),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
            ElevatedButton(onPressed: () {},
             child: Text('salvar'),
             style: ElevatedButton.styleFrom(
              primary: Colors.deepOrange),
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.air),
                label: Text('Modo Aviao'),
                style:ButtonStyle(
                  shadowColor:MaterialStateProperty.all(Colors.deepOrange),
                  backgroundColor: MaterialStateProperty.resolveWith((states){
                    if (states.contains(MaterialState.pressed)) {
                        return Colors.lightBlue;
                    }else if(states.contains(MaterialState.hovered)){
                        return Colors.blueGrey;
                    }
                       return Colors.black;
                  }),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
