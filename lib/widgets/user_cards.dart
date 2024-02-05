import 'package:card_manager/models/bank_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
// import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class UserCards extends StatefulWidget {
  const UserCards({
    super.key, 
    required this.availableCards, 
    required this.onCardSwipe
  });

  final List<BankCard> availableCards;
  final Function(int) onCardSwipe;

  @override
  State<UserCards> createState() {
    return _UserCardsState();
  }
}

class _UserCardsState extends State<UserCards> {
  List<BankCard> userCards = [];
  final CardSwiperController controller = CardSwiperController();
  int currentCardIndex = 0;

  @override
  void initState() {
    super.initState();
    userCards = widget.availableCards;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 215,
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
              border: Border.all(
                color: Colors.white.withOpacity(0.7),
                width: 2
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      userCards[index].bankName,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    const Icon(
                      Icons.contactless_rounded,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      userCards[index].cardNumber,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    Text(
                      'Exp: ${userCards[index].expiryDate.month}/${userCards[index].expiryDate.year}',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Balance',
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w700
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
                    ),
                    Text(
                      userCards[index].cardType,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700
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
        cardsCount: userCards.length,
        onSwipe: (index, nextIndex, direction) {
          if(nextIndex != null) {
            setState(() {
              currentCardIndex = (currentCardIndex + 1) % widget.availableCards.length; 
            });
            widget.onCardSwipe(currentCardIndex);
          }
          return true;
        },
      ),
    );
  }
}
