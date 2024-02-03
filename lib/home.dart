import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cards'),
        forceMaterialTransparency: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text('Card 1'),
            Text('Card 2'),
            Text('Card 3'),
          ],
        ),
      ),
    );
  }
}
