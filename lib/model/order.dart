class Order {
  final int orderID;
  final int userID;
  final int paymentID;
  final String address;
  final double total;
  final DateTime create_at;
  final int status;
  final String phone;

  Order(this.orderID, this.userID, this.paymentID, this.address, this.total,
      this.create_at, this.status, this.phone);

  Map<String, dynamic> toMap() {
    return {
      'orderID': orderID,
      'userID': userID,
      'paymentID': paymentID,
      'address': address,
      'total': total,
      'create_at': create_at,
      'status': status,
      'phone': phone,
    };
  }
}
