import 'package:card_manager/data/cards_data.dart';
import 'package:card_manager/widgets/home_buttons.dart';
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
      // App Bar
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              radius: 20  ,
              backgroundImage: NetworkImage(
                'https://i.redd.it/whats-drakes-most-sus-moment-v0-24unk692z53c1.jpg?width=500&format=pjpg&auto=webp&s=11aeeb8b68d2770622aa2be2d0cc240f5d17a503'
              ),
              
            ),
            const SizedBox(width: 10,),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text( 'Hi, Wynn', ),
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.onBackground.withOpacity(0.6)
                  )
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton.outlined(
            onPressed: () {}, 
            icon: const Icon(Icons.notifications_none_rounded),
            color: Theme.of(context).colorScheme.onBackground,
            iconSize: 18,
          ),
        ],
        forceMaterialTransparency: true,
      ),
      // App Body
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Swipable Bank Cards
              UserCards(
                availableCards: dummyCards,
                onCardSwipe: (int index) { 
                  setState(() => currentIndex = index); 
                },
              ),
              // Add Card Button
              ElevatedButton.icon(
                onPressed: () {}, 
                icon: const Icon(Icons.add_rounded), 
                label: const Text('Add Card'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.onBackground,
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  textStyle: const TextStyle(fontSize: 18,),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  minimumSize: const Size(double.infinity, 50), 
                ),
              ),
              const SizedBox(height: 20,),
              // List of Home Buttons
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeButton(icon: Icons.contactless_outlined, label: 'Pay'),
                  HomeButton(icon: Icons.qr_code_scanner_rounded, label: 'Scan QR'),
                  HomeButton(icon: Icons.arrow_downward_rounded, label: 'Request'),
                  HomeButton(icon: Icons.insert_chart_outlined_rounded, label: 'Statistics')
                ],
              ),
              const SizedBox(height: 25,),
              // List of Transactions for the Visible Card
              UserTransactions(
                transactions: dummyCards[currentIndex].transactions!
              )
            ],
          ),
        ),
      ),
    );
  }
}
