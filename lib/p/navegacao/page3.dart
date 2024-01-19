import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/p/navegacao/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 4'),
        ),
         body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               ElevatedButton(onPressed: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    settings: const RouteSettings(name: 'page4'),
                    builder: (context) => const Page4(),
                    ),
                  );
               },
                child: const Text('page4 via page'),
               ),
               ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: const Text('pop'),
               ),
               ElevatedButton(onPressed: (){
                 Navigator.of(context).pushNamed('/page4');
               }, child: const Text('page4 via named')),
            ],
          ),
        ),
    );
  }
}