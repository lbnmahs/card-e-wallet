import 'package:card_manager/models/bank_card.dart';
import 'package:flutter/material.dart';

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
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 300,
      width: double.infinity,
      child: ListView.builder(
        itemCount: userTransactions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              userTransactions[index].name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              userTransactions[index].formattedDate,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),
            ),
            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: userTransactions[index].isExpense ? Colors.red : Colors.green,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                '\$${userTransactions[index].amount.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}