import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {

  const ContainerPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Container'),),
           body: Container(
              height: 200,
              width: 200,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(30),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  const BoxShadow(
                    color:Colors.black,
                    blurRadius: 10,
                    offset:Offset(10,10)
                  ),
                ]
                ),
              ),
       );
  }
}