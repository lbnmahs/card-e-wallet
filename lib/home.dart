import 'package:card_manager/data/cards_data.dart';
import 'package:card_manager/widgets/user_cards.dart';
import 'package:card_manager/widgets/user_transactions.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436180.jpg'
              ),
            ),
            SizedBox(width: 15,),
            Text( 'Hello Wynn', ),
          ],
        ),
        forceMaterialTransparency: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              UserCards(
                availableCards: dummyCards,
                onCardSwipe: (int index) {
                  setState(() {currentIndex = index;});
                },
              ),
              ElevatedButton.icon(
                onPressed: () {}, 
                icon: const Icon(Icons.add_rounded), 
                label: const Text('Add Card'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.onBackground,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 18,),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  minimumSize: const Size(double.infinity, 50), 
                ),
              ),
              const SizedBox(height: 30,),
              UserTransactions(transactions: dummyCards[currentIndex].transactions!)
            ],
          ),
        ),
      ),
    );
  }
}
