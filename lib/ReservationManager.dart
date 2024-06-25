// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:car_rental_system/reservation.dart';

class ReservationManager {
  List<Reservation> reservations;
  ReservationManager({
    required this.reservations,
  });

  void makeReservation(Reservation reservation) {
    reservations.add(reservation);
  }

  void cancelReservation(String reservationId) {
    reservations.removeWhere((reservation) => reservation.id == reservationId);
  }

  void displayAllReservations() {
    print('Reservations: ');
    reservations.forEach((reservation) {
      reservation.displayReservationDetails();
      print('-----------------------------------');
    });
  }
}
