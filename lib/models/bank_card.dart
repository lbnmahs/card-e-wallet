import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.MMMMd('en_US').add_jm();

class Transaction {
  Transaction({
    required this.transactionType,
    required this.amount,
    required this.date,
  });

  final String transactionType;
  final double amount;
  final DateTime date;

  String get formattedDate => formatter.format(date);
}

class BankCard {
  BankCard(
    this.transactions,
    {
      required this.bankName,
      required this.cardType,
      required this.cardNumber,
      required this.cardHolder,
      required this.expiryDate,
      required this.gradient
    }
  );

  final String bankName;
  final String cardType;
  final String cardNumber;
  final String cardHolder;
  final DateTime expiryDate;
  final List<Transaction> transactions;
  final List<Color> gradient;
}
