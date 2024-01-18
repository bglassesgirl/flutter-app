import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home page container'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color:Colors.black,
                blurRadius: 10,
                offset:Offset(10,10)
              ),
            ]
            ),
          ),
        )
        ),
    );
  }
}