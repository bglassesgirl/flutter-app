import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/p/navegacao/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               ElevatedButton(onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(name: 'page2'),
                    builder: (context) => const Page2(),
                    ),
                  );
               },
                child: const Text('page2 via page')),
               ElevatedButton(onPressed: (){
                 Navigator.of(context).pushNamed('/page2');
               }, child: const Text('page2 via named')),
            ],
          ),
        ),
    );
  }
}