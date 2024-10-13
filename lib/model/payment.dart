class Payment {
  final int paymentID;
  final String paymentName;
  final String description;

  Payment(this.paymentID, this.paymentName, this.description);

  Map<String, dynamic> toMap() {
    return {
      'paymentID': paymentID,
      'paymentName': paymentName,
      'description': description
    };
  }
}
