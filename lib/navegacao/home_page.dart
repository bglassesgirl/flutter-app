import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_fundamentos/navegacao/page1.dart';
import 'package:flutter_fundamentos/navegacao/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               ElevatedButton(onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page2'),
                    builder: (context) => Page2(),
                    ),
                  );
               },
                child: Text('page2 via page')),
               ElevatedButton(onPressed: (){
                 Navigator.of(context).pushNamed('/page2');
               }, child: Text('page2 via named')),
            ],
          ),
        ),
    );
  }
}