class Images {
  final int imageID;
  final int productID;
  final String image;

  Images(this.imageID, this.productID, this.image);

  Map<String, dynamic> toMap() {
    return {'imageID': imageID, 'productID': productID, 'image': image};
  }
}
