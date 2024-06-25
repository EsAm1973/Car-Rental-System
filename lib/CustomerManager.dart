// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:car_rental_system/customer.dart';

class CustomerManager {
  List<Customer> customers;
  CustomerManager({
    required this.customers,
  });

  void addCustomer(Customer customer) {
    customers.add(customer);
  }

  void removeCustomer(String customerId) {
    customers.removeWhere((customer) => customer.id == customerId);
  }

  Customer? findCustomerByID(String id) {
    for (var customer in customers) {
      if (customer.id == id) {
        return customer;
      }
    }
    return null;
  }

  void displayAllCustomers() {
    print('Customers: ');
    customers.forEach((customer) {
      customer.displayCustomerDetails();
      print('-----------------------------------');
    });
  }
}
