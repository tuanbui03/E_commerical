
class OrderDetail {
  final int orderDetailsID;
  final int order;
  final int voucher;
  final int product;
  final int quantity;
  final double price;

  OrderDetail(this.orderDetailsID, this.order, this.voucher, this.product,
      this.quantity, this.price);

  Map<String, dynamic> toMap() {
    return {
      'orderDetailsID': orderDetailsID,
      'order': order,
      'voucher': voucher,
      'product': product,
      'quantity': quantity,
      'price': price,
    };
  }
}
