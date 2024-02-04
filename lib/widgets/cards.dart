import 'package:flutter/material.dart';
// import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class UserCards extends StatefulWidget {
  const UserCards({super.key});

  @override
  State<UserCards> createState() {
    return _UserCardsState();
  }
}

class _UserCardsState extends State<UserCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18.0),
      child: const Text('Mine'),
    );
  }
}
