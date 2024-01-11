import 'package:flutter/material.dart';

// tentar stf ou stl que ja cria as duas classes automaticamente

// classe principal que CHAMA os componentes
class HomePageStatefull extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return _HomePageStateFullState();
  }
}

//
class _HomePageStateFullState  extends State<HomePageStatefull>{
  String texto = 'Estou no StateLessWidgtFull';

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Text(texto),
            TextButton(
              onPressed: (){
              setState(() {
                 texto = 'alterei o meu texto ;)';
              });
            }, child: Text('alterar texto'),
            ),
          ],
        ),

     );
  }
}