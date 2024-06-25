// ignore_for_file: public_member_api_docs, sort_constructors_first
class Reservation {
  String id;
  DateTime pickedupDate;
  DateTime dropoffDate;
  String vehicleId;
  String customerId;
  Reservation({
    required this.id,
    required this.pickedupDate,
    required this.dropoffDate,
    required this.vehicleId,
    required this.customerId,
  });

  void displayReservationDetails() {
    print('Reservation ID: $id');
    print('Picked Date and Time: $pickedupDate');
    print('Drop off Date and Time: $dropoffDate');
    print('Vehilce ID: $vehicleId');
    print('Customer ID: $customerId');
  }
}
