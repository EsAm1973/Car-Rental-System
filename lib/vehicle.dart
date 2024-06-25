// ignore_for_file: public_member_api_docs, sort_constructors_first
class Vehicle {
  String id;
  String make;
  String model;
  String color;
  String registrationNumber;
  String mileage;
  bool available;
  DateTime lastMaintenanceDate;
  List<String> features;
  Vehicle({
    required this.id,
    required this.make,
    required this.model,
    required this.color,
    required this.registrationNumber,
    required this.mileage,
    required this.available,
    required this.lastMaintenanceDate,
    required this.features,
  });

  void displayCarDetails() {
    print('Vehicle ID: $id');
    print('Make: $make');
    print('Model: $model');
    print('Color: $color');
    print('Registration Number: $registrationNumber');
    print('Mileage: $mileage');
    print('Available: ${available ? 'Yes' : 'No'}');
    print('Last Maintenance Date: $lastMaintenanceDate');
    print('Features:');
    features.forEach((element) {
      print('- $element');
    });
  }
}
