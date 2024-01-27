import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Layout Builder'),
           ),
           body: Center(
            child:LayoutBuilder(
              builder: (contexto, constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                      Container(
                        color: Color.fromARGB(255, 244, 54, 98),
                        width: constraints.maxWidth * .50,
                        height: constraints.maxHeight * .5,
                      ),
                      Container(
                        color: Color.fromARGB(255, 7, 255, 119),
                        width: constraints.maxWidth,
                        height: constraints.maxHeight * .5,
                      ),
                    ],
                );
              },
            ),
           ),
       );
  }
}