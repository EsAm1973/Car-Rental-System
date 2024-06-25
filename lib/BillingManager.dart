// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:car_rental_system/Invoice.dart';
import 'package:car_rental_system/payment.dart';

class Billing {
  List<Invoice> invoices;
  List<Payment> payments;
  Billing({
    required this.invoices,
    required this.payments,
  });

  void addInvoice(Invoice invoice) {
    invoices.add(invoice);
  }

  Invoice? findInvoiceByID(String id) {
    for (var invoice in invoices) {
      if (invoice.id == id) {
        return invoice;
      }
    }
    return null;
  }

  void addPayment(Payment payment) {
    payments.add(payment);
  }

  void displayAllInvoices() {
    print('Invoices: ');
    for (var invoice in invoices) {
      invoice.displayInvoiceDetails();
      print('-----------------------------------');
    }
  }

  void displayAllPayments() {
    print('Payments: ');
    for (var payment in payments) {
      payment.displayPaymentDetails();
      print('-----------------------------------');
    }
  }
}
