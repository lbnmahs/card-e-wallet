import 'package:card_manager/models/bank_card.dart';
import 'package:flutter/material.dart';

class UserCardDetails extends StatelessWidget {
  const UserCardDetails({super.key, required this.cardInfo});
  final BankCard cardInfo;

  @override
  Widget build(BuildContext context) {
    String formattedMonth = cardInfo.expiryDate.month.toString().padLeft(2, '0');
    String yearLastTwoDigits = cardInfo.expiryDate.year.toString().substring(2);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              cardInfo.bankName,
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
              cardInfo.cardNumber,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.white, 
                fontWeight: FontWeight.w600
              ),
            ),
            Text(
              '$formattedMonth/$yearLastTwoDigits',
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
                  '\$${cardInfo.balance}',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white, 
                    fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
            Text(
              cardInfo.cardType,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Colors.white, 
                fontWeight: FontWeight.w700
              ),
            ),
          ],
        )
      ],
    );
  }
}
