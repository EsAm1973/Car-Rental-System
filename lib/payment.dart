// ignore_for_file: public_member_api_docs, sort_constructors_first
class Payment {
  String id;
  String invoiceID;
  double amountPaid;
  DateTime paymentDate;
  Payment({
    required this.id,
    required this.invoiceID,
    required this.amountPaid,
    required this.paymentDate,
  });

  void displayPaymentDetails() {
    print('Payment ID: $id');
    print('Invoice ID: $invoiceID');
    print('Amount Paid: $amountPaid');
    print('Payment Date: $paymentDate');
  }
}
