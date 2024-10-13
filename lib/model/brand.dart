class Brand {
  final int brandID;
  final String brandName;
  final String description;

  Brand(this.brandID, this.brandName, this.description);

  Map<String, dynamic> toMap() {
    return {
      'brandID': brandID,
      'brandName': brandName,
      'description': description
    };
  }
}
