import 'package:flutter/material.dart';

class HomePageStateless extends StatelessWidget {

  String texto = 'Estou no StateLessWidgt';

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Text(texto),
            TextButton(onPressed: (){
              texto = 'alterei o texto do stateLessWidgt';
            }, child: Text('alterar texto'),
            ),
          ],
        ),

     );
  }

}