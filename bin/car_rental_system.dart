import 'dart:io';
import 'package:car_rental_system/BillingManager.dart';
import 'package:car_rental_system/CustomerManager.dart';
import 'package:car_rental_system/FleetManager.dart';
import 'package:car_rental_system/Invoice.dart';
import 'package:car_rental_system/ReservationManager.dart';
import 'package:car_rental_system/customer.dart';
import 'package:car_rental_system/payment.dart';
import 'package:car_rental_system/reservation.dart';
import 'package:car_rental_system/vehicle.dart';

void main(List<String> arguments) {
  CustomerManager customers = CustomerManager(customers: []);
  FleetManager fleetManager = FleetManager(vehicles: []);
  ReservationManager reservationManager = ReservationManager(reservations: []);
  Billing billing = Billing(invoices: [], payments: []);

  while (true) {
    print('============= Car Rental System =============');
    print('Choose what you want');
    print('1. Management Customers');
    print('2. Management Vehicle');
    print('3. Management Reservation');
    print('4. Management Payment and Invoice');
    print('5. Exit');
    print('Enter your choice');
    int mainChoice = int.parse(stdin.readLineSync()!);

    if (mainChoice == 1) {
      bool customerMenu = true;
      while (customerMenu) {
        print('Choose what you want');
        print('1. Add Customer');
        print('2. Remove Customer');
        print('3. Update Customer Information');
        print('4. Display All Customers');
        print('5. Back to Main menu');
        print('Enter your choice');
        int choice = int.parse(stdin.readLineSync()!);
        if (choice == 1) {
          print('Enter Id of Customer');
          String id = stdin.readLineSync()!;
          print('Enter name of Customer');
          String name = stdin.readLineSync()!;
          print('Enter Email of Customer');
          String email = stdin.readLineSync()!;
          print('Enter Phone Number of Customer');
          String phoneNumber = stdin.readLineSync()!;
          print('Enter Addrees of Customer');
          String address = stdin.readLineSync()!;
          print('Enter Payment Methods of Customer');
          print('Enter Number of Methods Payment you used');
          int paymentNumbers = int.parse(stdin.readLineSync()!);
          List<String> paymentMethods = [];
          for (int i = 0; i < paymentNumbers; i++) {
            print('Enter Method ${i + 1}');
            String element = stdin.readLineSync()!;
            paymentMethods.add(element);
          }
          Customer customer = Customer(
              id: id,
              name: name,
              email: email,
              phoneNumber: phoneNumber,
              address: address,
              paymentMethods: paymentMethods);

          customers.addCustomer(customer);
          print('======= Customer Added =======');
        } else if (choice == 2) {
          print('Enter Customer ID you want remove');
          String id = stdin.readLineSync()!;
          customers.removeCustomer(id);
          print('======= Customer Removed =======');
        } else if (choice == 3) {
          print('Enter Customer ID you want to update:');
          String id = stdin.readLineSync()!;
          print('Enter new name');
          String? newName = stdin.readLineSync();
          print('Enter new email');
          String? newEmail = stdin.readLineSync();
          print('Enter new phone number');
          String? newPhoneNumber = stdin.readLineSync();
          print('Enter new address');
          String? newAddress = stdin.readLineSync();
          Customer? customerToUpdate = customers.findCustomerByID(id);
          if (customerToUpdate != null) {
            customerToUpdate.updateInformation(
                newName, newEmail, newPhoneNumber, newAddress);
            print('======= Customer Information Updated =======');
          } else {
            print('Customer with ID $id not found');
          }
        } else if (choice == 4) {
          customers.displayAllCustomers();
        } else if (choice == 5) {
          customerMenu = false;
        }
      }





    } else if (mainChoice == 2) {
      bool vehicleMenu = true;
      while (vehicleMenu) {
        print('Choose what you want');
        print('1. Add Vehicle');
        print('2. Remove Vehicle');
        print('3. Display All Vehicles');
        print('4. Back to Main menu');
        print('Enter your choice');
        int choice = int.parse(stdin.readLineSync()!);
        if (choice == 1) {
          print('Enter Id of Vehicle');
          String id = stdin.readLineSync()!;
          print('Enter Make Vehicle');
          String make = stdin.readLineSync()!;
          print('Enter Model Vehicle');
          String model = stdin.readLineSync()!;
          print('Enter Color of Vehicle');
          String color = stdin.readLineSync()!;
          print('Enter Registration Number');
          String registrationNumber = stdin.readLineSync()!;
          print('Enter mileage of Vehicle');
          String mileage = stdin.readLineSync()!;
          print('Enter availability of Vehicle');
          bool available = bool.parse(stdin.readLineSync()!);
          print('Enter Last Maintance Date');
          DateTime lastMaintenanceDate = DateTime.parse(stdin.readLineSync()!);
          print('Enter Number of Features in Vehicle');
          int featuresNumbers = int.parse(stdin.readLineSync()!);
          List<String> Features = [];
          for (int i = 0; i < featuresNumbers; i++) {
            print('Enter Method ${i + 1}');
            String element = stdin.readLineSync()!;
            Features.add(element);
          }
          fleetManager.addVehicle(Vehicle(
              id: id,
              make: make,
              model: model,
              color: color,
              registrationNumber: registrationNumber,
              mileage: mileage,
              available: available,
              lastMaintenanceDate: lastMaintenanceDate,
              features: Features));
          print('======= Vehicle Added =======');
        } else if (choice == 2) {
          print('Enter Vehicle ID you want remove');
          String id = stdin.readLineSync()!;
          fleetManager.removeVehicle(id);
          print('======= Vehicle Removed =======');
        } else if (choice == 3) {
          fleetManager.displayAllVehicle();
        } else if (choice == 4) {
          vehicleMenu = false;
        }
      }




    } else if (mainChoice == 3) {
      bool reservationMenu = true;
      while (reservationMenu) {
        print('Choose what you want');
        print('1. Make Reservation');
        print('2. Cancel Reservation');
        print('3. Display All Reservations');
        print('4. Back to Main menu');
        print('Enter your choice');
        int choice = int.parse(stdin.readLineSync()!);
        if (choice == 1) {
          print('Enter Reservation Id');
          String id = stdin.readLineSync()!;
          print('Enter PickedUp Date');
          DateTime pickedupDate = DateTime.parse(stdin.readLineSync()!);
          print('Drop off Date');
          DateTime dropoffDate = DateTime.parse(stdin.readLineSync()!);
          print('Vehicle ID');
          String vehicleId = stdin.readLineSync()!;
          print('Enter Customer ID');
          String customerId = stdin.readLineSync()!;

          reservationManager.makeReservation(Reservation(
              id: id,
              pickedupDate: pickedupDate,
              dropoffDate: dropoffDate,
              vehicleId: vehicleId,
              customerId: customerId));

          print('======= Reservation Maked =======');
        } else if (choice == 2) {
          print('Enter Reservation ID');
          String reservationId = stdin.readLineSync()!;
          reservationManager.cancelReservation(reservationId);
          print('======= Reservation Canceled =======');
        } else if (choice == 3) {
          reservationManager.displayAllReservations();
        } else if (choice == 4) {
          reservationMenu = false;
        }
      }



      
    } else if (mainChoice == 4) {
      bool paymentMenu = true;
      while (paymentMenu) {
        print('Choose what you want');
        print('1. Make Invoice');
        print('2. Make Payment');
        print('3. Display All Invoices');
        print('4. Display All Payments');
        print('5. Back to Main menu');
        print('Enter your choice');
        int choice = int.parse(stdin.readLineSync()!);
        if (choice == 1) {
          print('Enter Invoice Id');
          String id = stdin.readLineSync()!;
          print('Enter Issuse Date');
          DateTime issuseDate = DateTime.parse(stdin.readLineSync()!);
          print('Enter the amount to be invoiced');
          double amount = double.parse(stdin.readLineSync()!);
          print('Enter Customer Id');
          String customerId = stdin.readLineSync()!;

          billing.addInvoice(Invoice(
              id: id,
              issuseDate: issuseDate,
              amount: amount,
              customerId: customerId));
          print('====== Invoice Added ======');
        } else if (choice == 2) {
          print('Enter Payment Id');
          String id = stdin.readLineSync()!;
          print('Enter Payment Date');
          DateTime paymentDate = DateTime.parse(stdin.readLineSync()!);
          print('Enter the amount to be Payment');
          double amountPaid = double.parse(stdin.readLineSync()!);
          print('Enter Invoice Id');
          String invoiceId = stdin.readLineSync()!;

          Invoice? foundInvoice = billing.findInvoiceByID(invoiceId);
          if (foundInvoice != null) {
            billing.addPayment(Payment(
                id: id,
                invoiceID: invoiceId,
                amountPaid: amountPaid,
                paymentDate: paymentDate));
            foundInvoice.markAsPaid();
            print('Invoice Marked As Paid');
          } else {
            print('Invoice Not Found');
          }
        } else if (choice == 3) {
          billing.displayAllInvoices();
        } else if (choice == 4) {
          billing.displayAllPayments();
        } else if (choice == 5) {
          paymentMenu = false;
        }
      }
    } else if (mainChoice == 5) {
      exit(0);
    }
  }
}
