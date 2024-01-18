// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Page',
          style: TextStyle(
            fontFamily: 'RobotoSlab',
            color: Colors.black),
          ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
             Text(
                'Testando fontes...',
                style: TextStyle(
                fontFamily: 'RobotoSlab',
                color: Colors.black,
                fontWeight:FontWeight.bold,
                fontSize: 30,
                ),
               ),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(30),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  BoxShadow(
                    color:Colors.black,
                    blurRadius: 10,
                    offset:Offset(10,10)
                  ),
                ]
                ),
              ),
          ],
        ),
        )
        );
  }
}