// Come up with a list of bank cards that can be exported and used in different files

import 'package:flutter/material.dart';
import 'package:card_manager/models/bank_card.dart';

List<BankCard> dummyCards = [
  BankCard(
    [
      Transaction(
        name: 'Netflix',
        amount: 100.00,
        date: DateTime.now().subtract(const Duration(days: 2)),
        isExpense: true
      ),
      Transaction(
        name: 'Omar Sang',
        amount: 200.00,
        date: DateTime.now().subtract(const Duration(days: 3)),
        isExpense: false
      ),
      Transaction(
        name: 'Don Pollo',
        amount: 300.00,
        date: DateTime.now().subtract(const Duration(days: 4)),
        isExpense: false
      ),
      Transaction(
        name: 'Maxima Wynn',
        amount: 400.00,
        date: DateTime.now().subtract(const Duration(days: 5)),
        isExpense: false
      ),
    ],
    bankName: 'Standard Chartered',
    cardType: 'Prepaid',
    cardNumber: '**** **** **** 1234',
    balance: 1000,
    expiryDate: DateTime.now().add(const Duration(days: 365)),
    gradient: [
      Colors.purple.shade200,
      Colors.purple.shade400
    ]
  ),
  BankCard(
    [
      Transaction(
        name: 'Door Dash',
        amount: 100.00,
        date: DateTime.now().subtract(const Duration(days: 2)),
        isExpense: true
      ),
      Transaction(
        name: 'KFC',
        amount: 200.00,
        date: DateTime.now().subtract(const Duration(days: 3)),
        isExpense: true
      ),
      Transaction(
        name: 'Zuchinni',
        amount: 300.00,
        date: DateTime.now().subtract(const Duration(days: 4)),
        isExpense: true
      ),
      Transaction(
        name: 'Thannasis Giannakopoulos',
        amount: 400.00,
        date: DateTime.now().subtract(const Duration(days: 5)),
        isExpense: false
      ),
    ],
    bankName: 'Equity',
    cardType: 'Debit',
    cardNumber: '**** **** **** 5678',
    balance: 2000,
    expiryDate: DateTime.now().add(const Duration(days: 365)),
    gradient: [
      Colors.orange.shade600,
      Colors.amberAccent.shade700
    ]
  ),
  BankCard(
    [
      Transaction(
        name: 'Uber',
        amount: 100.00,
        date: DateTime.now().subtract(const Duration(days: 2)),
        isExpense: true
      ),
      Transaction(
        name: 'Taxify',
        amount: 200.00,
        date: DateTime.now().subtract(const Duration(days: 3)),
        isExpense: true
      ),
      Transaction(
        name: 'Bolt',
        amount: 300.00,
        date: DateTime.now().subtract(const Duration(days: 4)),
        isExpense: true
      ),
      Transaction(
        name: 'Mpesa',
        amount: 400.00,
        date: DateTime.now().subtract(const Duration(days: 5)),
        isExpense: false
      ),
    ],
    bankName: 'ABSA',
    cardType: 'Credit',
    cardNumber: '**** **** **** 9101',
    balance: 3000,
    expiryDate: DateTime.now().add(const Duration(days: 365)),
    gradient: [
      Colors.red.shade200,
      Colors.red.shade400
    ]
  ),
  BankCard(
    [
      Transaction(
        name: 'Netflix',
        amount: 100.00,
        date: DateTime.now().subtract(const Duration(days: 2)),
        isExpense: true
      ),
      Transaction(
        name: 'Omar Sang',
        amount: 200.00,
        date: DateTime.now().subtract(const Duration(days: 3)),
        isExpense: false
      ),
      Transaction(
        name: 'Don Pollo',
        amount: 300.00,
        date: DateTime.now().subtract(const Duration(days: 4)),
        isExpense: false
      ),
      Transaction(
        name: 'Maxima Wynn',
        amount: 400.00,
        date: DateTime.now().subtract(const Duration(days: 5)),
        isExpense: false
      ),
    ],
    bankName: 'NCBA',
    cardType: 'Prepaid',
    cardNumber: '**** **** **** 1234',
    balance: 1000,
    expiryDate: DateTime.now().add(const Duration(days: 365)),
    gradient: [
      Colors.yellow.shade800,
      Colors.yellow.shade500
    ]
  ),
  BankCard(
    [
      Transaction(
        name: 'Door Dash',
        amount: 100.00,
        date: DateTime.now().subtract(const Duration(days: 2)),
        isExpense: true
      ),
      Transaction(
        name: 'KFC',
        amount: 200.00,
        date: DateTime.now().subtract(const Duration(days: 3)),
        isExpense: true
      ),
      Transaction(
        name: 'Zuchinni',
        amount: 300.00,
        date: DateTime.now().subtract(const Duration(days: 4)),
        isExpense: true
      ),
      Transaction(
        name: 'Thannasis Giannakopoulos',
        amount: 400.00,
        date: DateTime.now().subtract(const Duration(days: 5)),
        isExpense: false
      ),
    ],
    bankName: 'Family Bank',
    cardType: 'Debit',
    cardNumber: '**** **** **** 5678',
    balance: 2000,
    expiryDate: DateTime.now().add(const Duration(days: 365)),
    gradient: [
      Colors.blue.shade200,
      Colors.blue.shade400
    ]
  ),
];
