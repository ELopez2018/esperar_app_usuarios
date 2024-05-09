import 'package:esperar_users/domain/entities/chairs/chair_id.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reservation_request.g.dart';

@JsonSerializable()
class ReservationRequest {
  ReservationRequest({
    required this.journeyId,
    required this.vehicleId,
    required this.reservedChairs,
  });

  final int journeyId;
  final int vehicleId;
  final List<ReservedChairs> reservedChairs;
  factory ReservationRequest.fromJson(Map<String, dynamic> json) =>
      _$ReservationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReservationRequestToJson(this);
}
