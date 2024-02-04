// Come up with a list of bank cards that can be exported and used in different files

import 'package:flutter/material.dart';
import 'package:card_manager/models/bank_card.dart';

List<BankCard> dummyCards = [
  BankCard(
    [
      Transaction(
        transactionType: 'Payment',
        amount: 100.00,
        date: DateTime.now().subtract(const Duration(days: 2))
      ),
      Transaction(
        transactionType: 'Withdrawal',
        amount: 200.00,
        date: DateTime.now().subtract(const Duration(days: 3))
      ),
      Transaction(
        transactionType: 'Payment',
        amount: 300.00,
        date: DateTime.now().subtract(const Duration(days: 4))
      ),
      Transaction(
        transactionType: 'Withdrawal',
        amount: 400.00,
        date: DateTime.now().subtract(const Duration(days: 5))
      ),
    ],
    bankName: 'Standard Chartered',
    cardType: 'Prepaid',
    cardNumber: '**** **** **** 1234',
    cardHolder: 'John Doe',
    expiryDate: DateTime.now().add(const Duration(days: 365)),
    gradient: [
      Colors.purple.shade200,
      Colors.purple.shade400
    ]
  ),
  BankCard(
    [
      Transaction(
        transactionType: 'Payment',
        amount: 100.00,
        date: DateTime.now().subtract(const Duration(days: 2))
      ),
      Transaction(
        transactionType: 'Withdrawal',
        amount: 200.00,
        date: DateTime.now().subtract(const Duration(days: 3))
      ),
      Transaction(
        transactionType: 'Payment',
        amount: 300.00,
        date: DateTime.now().subtract(const Duration(days: 4))
      ),
      Transaction(
        transactionType: 'Withdrawal',
        amount: 400.00,
        date: DateTime.now().subtract(const Duration(days: 5))
      ),
    ],
    bankName: 'Equity',
    cardType: 'Debit',
    cardNumber: '**** **** **** 5678',
    cardHolder: 'Jane Doe',
    expiryDate: DateTime.now().add(const Duration(days: 365)),
    gradient: [
      Colors.blue.shade200,
      Colors.blue.shade400
    ]
  ),
];
