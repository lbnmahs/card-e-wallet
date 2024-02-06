import 'package:card_manager/models/bank_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({super.key, required this.transactions});

  final List<Transaction> transactions;

  @override
  State<UserTransactions> createState() {
    return _UserTransactionsState();
  }
}   

class _UserTransactionsState extends State<UserTransactions> {
  List<Transaction> userTransactions = [];

  @override
  void initState() {
    super.initState();
    userTransactions = widget.transactions;
  }

  @override
  void didUpdateWidget(UserTransactions oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.transactions != oldWidget.transactions) {
      setState(() {
        userTransactions = widget.transactions;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Text(
            'Recent Transactions',
            style: TextStyle(
              fontSize: 16,
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 400,
          child: ListView.builder(
            itemCount: userTransactions.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    title: Text(
                      userTransactions[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                    ),
                    subtitle: Text(
                      userTransactions[index].formattedDate,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    trailing: Text(
                      '\$${userTransactions[index].amount.toString()}',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: userTransactions[index].isExpense ? Colors.red : Colors.green,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.5),
                    thickness: 0.5,
                    height: 0.5,
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}