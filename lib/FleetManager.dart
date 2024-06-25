// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:car_rental_system/vehicle.dart';

class FleetManager {
  List<Vehicle> vehicles;
  FleetManager({
    required this.vehicles,
  });

  void addVehicle(Vehicle vehicle) {
    vehicles.add(vehicle);
  }

  void removeVehicle(String vehicleId) {
    vehicles.removeWhere((vehicle) => vehicle.id == vehicleId);
  }

  void displayAllVehicle() {
    print('Fleet: ');
    for (var vehicle in vehicles) {
      vehicle.displayCarDetails();
      print('-----------------------------------');
    }
  }
}
