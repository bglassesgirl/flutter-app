import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_fundamentos/navegacao/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 4'),
        ),
         body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               ElevatedButton(onPressed: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page4'),
                    builder: (context) => Page4(),
                    ),
                  );
               },
                child: Text('page4 via page'),
               ),
               ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Text('pop'),
               ),
               ElevatedButton(onPressed: (){
                 Navigator.of(context).pushNamed('/page4');
               }, child: Text('page4 via named')),
            ],
          ),
        ),
    );
  }
}