import 'package:flutter/material.dart';
import 'package:card_manager/models/bank_card.dart';

List<BankCard> dummyCards = [
  BankCard(
    [
      Transaction(
        name: 'Netflix',
        amount: 10,
        date: DateTime.now().subtract(const Duration(days: 2)),
        isExpense: true
      ),
      Transaction(
        name: 'Omar Sang',
        amount: 255,
        date: DateTime.now().subtract(const Duration(days: 3)),
        isExpense: false
      ),
      Transaction(
        name: 'Don Pollo',
        amount: 3100,
        date: DateTime.now().subtract(const Duration(days: 4)),
        isExpense: false
      ),
      Transaction(
        name: 'Maxima Wynn',
        amount: 40,
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
        amount: 170.00,
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
        amount: 75,
        date: DateTime.now().subtract(const Duration(days: 4)),
        isExpense: true
      ),
      Transaction(
        name: 'Thannasis Giannakopoulos',
        amount: 230,
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
        amount: 5,
        date: DateTime.now().subtract(const Duration(days: 2)),
        isExpense: true
      ),
      Transaction(
        name: 'Taxify',
        amount: 17,
        date: DateTime.now().subtract(const Duration(days: 3)),
        isExpense: true
      ),
      Transaction(
        name: 'Bolt',
        amount: 13.00,
        date: DateTime.now().subtract(const Duration(days: 4)),
        isExpense: true
      ),
      Transaction(
        name: 'Mpesa',
        amount: 20.00,
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
        name: 'Olajide',
        amount: 110,
        date: DateTime.now().subtract(const Duration(days: 2)),
        isExpense: false
      ),
      Transaction(
        name: 'Panda Mart',
        amount: 200,
        date: DateTime.now().subtract(const Duration(days: 3)),
        isExpense: true
      ),
      Transaction(
        name: 'Tickets',
        amount: 30,
        date: DateTime.now().subtract(const Duration(days: 4)),
        isExpense: true
      ),
      Transaction(
        name: 'Sony',
        amount: 400,
        date: DateTime.now().subtract(const Duration(days: 5)),
        isExpense: true
      ),
      Transaction(
        name: 'Amazon',
        amount: 76,
        date: DateTime.now().subtract(const Duration(days: 4)),
        isExpense: true
      ),
      Transaction(
        name: 'Christopher Collombus',
        amount: 2,
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
      Colors.black,
      Colors.yellow.shade600
    ]
  ),
  BankCard(
    [
      Transaction(
        name: 'Nike',
        amount: 120,
        date: DateTime.now().subtract(const Duration(days: 2)),
        isExpense: true
      ),
      Transaction(
        name: 'Mama Ouma',
        amount: 9,
        date: DateTime.now().subtract(const Duration(days: 3)),
        isExpense: true
      ),
      Transaction(
        name: 'Amazon',
        amount: 80,
        date: DateTime.now().subtract(const Duration(days: 4)),
        isExpense: true
      ),
      Transaction(
        name: 'Socrates',
        amount: 400,
        date: DateTime.now().subtract(const Duration(days: 5)),
        isExpense: false
      ),
      Transaction(
        name: 'Amazon',
        amount: 90,
        date: DateTime.now().subtract(const Duration(days: 4)),
        isExpense: true
      ),
      Transaction(
        name: 'Christopher',
        amount: 420,
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
