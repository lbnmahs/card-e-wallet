import 'package:card_manager/data/cards_data.dart';
import 'package:card_manager/widgets/cards.dart';
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
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            UserCards(availableCards: dummyCards)
          ],
        ),
      ),
    );
  }
}
