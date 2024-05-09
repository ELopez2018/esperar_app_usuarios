import 'package:esperar_users/domain/entities/reservation/reservation.dart';
import 'package:esperar_users/domain/entities/reservation/reservation_request.dart';
import 'package:esperar_users/domain/repositories/reservation.dart';
import 'package:esperar_users/domain/services/reservation.dart';

class ReservationRepository extends ReservationInterface {
  ReservationRepository({
    required this.reservationServiceInterface,
  });

  final ReservationServiceInterface reservationServiceInterface;

  @override
  Future<Reservation?> create(ReservationRequest value) async {
    return await reservationServiceInterface.create(value);
  }
}
