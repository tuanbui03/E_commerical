class Wishlist {
  final int wishlistID;
  final int productID;
  final int userID;
  final DateTime created_At;
  final DateTime updated_At;

  Wishlist(this.wishlistID, this.productID, this.userID, this.created_At,
      this.updated_At);

  Map<String, dynamic> toMap() {
    return {
      'wishlistID': wishlistID,
      'productID': productID,
      'userID': userID,
      'created_At': created_At,
      'updated_At': updated_At
    };
  }
}
