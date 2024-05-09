import 'package:esperar_users/domain/entities/chairs/chairs.dart';
import 'package:esperar_users/domain/entities/journeys/journey.dart';
import 'package:esperar_users/domain/entities/user/user.dart';
import 'package:esperar_users/domain/entities/vehicle/vehicle.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reservation.g.dart';

@JsonSerializable()
class Reservation {
  Reservation({
    required this.id,
    required this.user,
    required this.journey,
    required this.vehicle,
    required this.value,
    required this.reservedChairs,
  });

  final int id;
  final User user;
  final Journey journey;
  final Vehicle vehicle;
  final String? value;
  final List<Chair> reservedChairs;
  factory Reservation.fromJson(Map<String, dynamic> json) =>
      _$ReservationFromJson(json);

  Map<String, dynamic> toJson() => _$ReservationToJson(this);
}
