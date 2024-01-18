import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_fundamentos/navegacao/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               ElevatedButton(onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page3'),
                    builder: (context) => Page3(),
                    ),
                  );
               },
                child: Text('page3 via page'),
               ),
               ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Text('pop'),
               ),
               ElevatedButton(onPressed: (){
                Navigator.of(context).pushNamed('/page3');
               }, child: Text('page3 via named')),
            ],
          ),
        ),
    );
  }
}