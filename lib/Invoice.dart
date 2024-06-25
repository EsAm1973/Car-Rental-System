// ignore_for_file: public_member_api_docs, sort_constructors_first
class Invoice {
  String id;
  DateTime issuseDate;
  double amount;
  String customerId;
  bool paid;
  Invoice({
    required this.id,
    required this.issuseDate,
    required this.amount,
    required this.customerId,
    this.paid = false,
  });

  void displayInvoiceDetails() {
    print('Invoice ID: $id');
    print('Issue Date: $issuseDate');
    print('Amount: $amount');
    print('Customer ID: $customerId');
    print('Status: ${paid ? 'Paid' : 'Unpaid'}');
  }

  void markAsPaid() {
    paid = true;
  }
}
