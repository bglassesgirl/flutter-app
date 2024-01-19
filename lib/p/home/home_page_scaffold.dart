import 'package:flutter/material.dart';

class HomePageScaffold extends StatelessWidget {
  const HomePageScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Barra de navegaçao'),
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: (){},
          icon: const Icon(Icons.ac_unit))
        ],
      ),
      drawer: const Drawer(),
      body: const Center(
        child: Text('nossa homepage'),
        )
    );
  }
}