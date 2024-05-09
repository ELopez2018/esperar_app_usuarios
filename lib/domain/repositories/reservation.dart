import 'package:esperar_users/domain/entities/reservation/reservation.dart';
import 'package:esperar_users/domain/entities/reservation/reservation_request.dart';

abstract class ReservationInterface{
  Future<Reservation?> create(ReservationRequest value); 
}