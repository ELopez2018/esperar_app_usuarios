import 'package:esperar_users/core/const/generate_space_chairs.dart';
import 'package:esperar_users/domain/entities/chairs/chair_id.dart';
import 'package:esperar_users/domain/entities/chairs/chairs.dart';
import 'package:esperar_users/domain/entities/chairs/vehicle_distribution.dart';
import 'package:esperar_users/domain/entities/journeys/journey.dart';
import 'package:esperar_users/domain/entities/payments/payments.dart';
import 'package:esperar_users/domain/entities/reservation/reservation.dart';
import 'package:esperar_users/domain/entities/reservation/reservation_request.dart';
import 'package:esperar_users/domain/repositories/paymetns.dart';
import 'package:esperar_users/domain/repositories/reservation.dart';
import 'package:flutter/material.dart';

class BookingProvider extends ChangeNotifier {
  BookingProvider({
    required this.reservationInterface,
    required this.paymentInterface,
  });

  final ReservationInterface reservationInterface;
  final PaymentInterface paymentInterface;

  Journey? journey;
  VehicleDistribution? distribution;
  List<Chair> chairsSelect = [];
  PageController controller = PageController(initialPage: 0);
  Reservation? reservation;

  final TextEditingController number = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController date = TextEditingController();
  final TextEditingController cvv = TextEditingController();

  void init(Journey value) {
    journey = value;
    distribution = fillEmptySpaces(value.vehicle.distribution);
    notifyListeners();
  }

  Future createReservation() async {
    try {
      final response = await reservationInterface.create(ReservationRequest(
        journeyId: journey!.id,
        vehicleId: journey!.vehicle.id,
        reservedChairs: chairsSelect
            .map((e) => ReservedChairs(chairId: e.id!))
            
            .toList(),
      ));
      if (response != null) {
        reservation = response;
        return true;
      }
    } on String catch (_) {
      print(_);
    }
  }

  Future createPago() async {
    try {
      final response = await paymentInterface.create(Payments(
        reservationId: reservation!.id,
        cardNumber: name.text,
        cardHolder: name.text,
        expirationDate: date.text,
        cvv: cvv.text,
      ));
      if (response != null) {
        return true;
      }
    } on String catch (_) {
      print(_);
    }
  }
}
