class Feedbacks {
  final int feedbackID;
  final int userID;
  final int productID;
  final String content;

  Feedbacks(this.feedbackID, this.userID, this.productID, this.content);

  Map<String, dynamic> toMap() {
    return {
      'feedbackID': feedbackID,
      'userID': userID,
      'productID': productID,
      'content': content
    };
  }
}
