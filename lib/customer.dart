// ignore_for_file: public_member_api_docs, sort_constructors_first
class Customer {
  String id;
  String name;
  String email;
  String phoneNumber;
  String address;
  List<String> paymentMethods;
  Customer({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.address,
    required this.paymentMethods,
  });

  void displayCustomerDetails() {
    print('Customer ID: $id');
    print('Name: $name');
    print('Email: $email');
    print('Phone Number: $phoneNumber');
    print('Address: $address');
    print('Payment Methods:');
    paymentMethods.forEach((element) {
      print('- $element');
    });
  }

  void updateInformation(
      String? name, String? email, String? phoneNumber, String? address) {
    if (name != null) {
      this.name = name;
    }
    if (email != null) {
      this.email = email;
    }
    if (phoneNumber != null) {
      this.phoneNumber = phoneNumber;
    }
    if (address != null) {
      this.address = address;
    }
  }
}
