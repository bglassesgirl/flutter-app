import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/detalhe');
            },
            child: const Text('Ir para detalhe'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/detalhe2');
            },
            child: const Text('Ir para detalhe2'),
          ),
        ]),
      ),
    );
  }
}
