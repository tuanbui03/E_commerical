class Product {
  final int productID;
  final int brandID;
  final String productName;
  final double price;
  final int sale;
  final String description;
  final double size;
  final String color;
  final String code;
  final int discount;
  final int status;

  Product(
      this.productID,
      this.brandID,
      this.productName,
      this.price,
      this.sale,
      this.description,
      this.size,
      this.color,
      this.code,
      this.discount,
      this.status);

  Map<String, dynamic> toMap() {
    return {
      'productID': productID,
      'brandID': brandID,
      'productName': productName,
      'price': price,
      'sale': sale,
      'description': description,
      'size': size,
      'color': color,
      'discount': discount,
      'status': status
    };
  }
}
