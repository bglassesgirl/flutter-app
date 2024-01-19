import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Images'),
        backgroundColor: Colors.orange[600],
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/newyork-city.jpg')
                    )
                    ),
                child: const Text('New York'),
                ),
                SizedBox(
                height: 300,
                width: 300,
                child: Image.network(
                  'https://i0.wp.com/theboutiqueadventurer.com/wp-content/uploads/2021/02/London-Tower-Bridge-at-Sunset.jpg'
                ),
                ),
            ],
          ),
          ),
    );
  }
}