import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barra de navegaçao'),
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: (){},
          icon: Icon(Icons.ac_unit))
        ],
      ),
      drawer: Drawer(),
      body: Center(
        child: Text('nossa homepage'),
        )
    );
  }
}