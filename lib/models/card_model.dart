class CardModel {
  final String type;
  final String details;
  final double balance;
  final String cardNumber;
  final int monthExpiry;
  final int yearExpiry;

  CardModel({
    this.details,
    this.balance,
    this.cardNumber,
    this.monthExpiry,
    this.yearExpiry,
    this.type,
  });
}
