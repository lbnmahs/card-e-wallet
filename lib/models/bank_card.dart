class Transaction {
  Transaction({
    required this.transactionType,
    required this.amount,
    required this.date,
  });

  final String transactionType;
  final double amount;
  final DateTime date;
}

class BankCard {
  BankCard(
    this.transactions,
    {
      required this.bankLogo,
      required this.cardType,
      required this.cardNumber,
      required this.cardHolder,
      required this.expiryDate,
    }
  );

  final String bankLogo;
  final String cardType;
  final String cardNumber;
  final String cardHolder;
  final DateTime expiryDate;
  final List<Transaction> transactions;
}
