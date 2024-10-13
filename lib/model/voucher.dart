class Voucher {
  final int voucherID;
  final String voucherCode;
  final DateTime dayStart;
  final DateTime dayEnd;
  final double descountPercent;
  final String description;

  Voucher(this.voucherID, this.voucherCode, this.dayStart, this.dayEnd,
      this.descountPercent, this.description);

  Map<String, dynamic> toMap() {
    return {
      'voucherID': voucherID,
      'voucherCode': voucherCode,
      'dayStart': dayStart,
      'dayEnd': dayEnd,
      'descountPercent': descountPercent,
      'description': description
    };
  }
}
