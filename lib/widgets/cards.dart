import 'package:card_manager/models/bank_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
// import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class UserCards extends StatefulWidget {
  const UserCards({super.key, required this.availableCards});

  final List<BankCard> availableCards;

  @override
  State<UserCards> createState() {
    return _UserCardsState();
  }
}

class _UserCardsState extends State<UserCards> {
  List<BankCard> userCards = [];
  final CardSwiperController controller = CardSwiperController();

  @override
  void initState() {
    super.initState();
    userCards = widget.availableCards;
  }
  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: CardSwiper(
        cardBuilder: ((context, index, horizontalOffsetPercentage, verticalOffsetPercentage) {
          return Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [userCards[index].gradient[0], userCards[index].gradient[1]],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Text(
                  userCards[index].bankName,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  userCards[index].cardType,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  userCards[index].cardNumber,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: [
                    Text(
                      'Exp: ${userCards[index].expiryDate.month}/${userCards[index].expiryDate.year}',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    Text(
                      '\$${userCards[index].balance}',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                )
              ],
            )
          );
        }), 
        backCardOffset: const Offset(0, -40),
        controller: controller,
        isLoop: true,
        numberOfCardsDisplayed: 3,
        cardsCount: userCards.length
      ),
    );
  }
}
