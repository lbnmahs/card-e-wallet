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
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              radius: 20  ,
              backgroundImage: NetworkImage(
                'https://i1.sndcdn.com/artworks-79AS3zNyDuB420uC-pKTA2w-t500x500.jpg'
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
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
            const SizedBox(height: 15,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeButton(icon: Icons.contactless_outlined, label: 'Pay'),
                HomeButton(icon: Icons.qr_code_scanner_rounded, label: 'Scan QR Code'),
                HomeButton(icon: Icons.arrow_downward_rounded, label: 'Request'),
                HomeButton(icon: Icons.show_chart_rounded, label: 'Statistics')
              ],
            ),
            const SizedBox(height: 25,),
            UserTransactions(transactions: dummyCards[currentIndex].transactions!)
          ],
        ),
      ),
    );
  }
}
