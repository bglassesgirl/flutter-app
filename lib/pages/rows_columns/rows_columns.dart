import 'package:flutter/material.dart';

class RowsColumns extends StatelessWidget {

  const RowsColumns({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Rows & Columns'),),
           body: Container(
            color: Colors.blueAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                const Text('Coluna s1'),
                const Text('Coluna 2'),
                const Text('Coluna 3'),
                const Text('Coluna 4'),
                Container(
                  color: Colors.blueGrey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                        Text('Linha 1 '),
                        Text('Linha 2 '),
                        Text('Linha 3 '),
                        Text('Linha 4 '),
                    ],
                  ),
                )
                ]),
           ),
       );
  }
}