import 'package:esperar_users/domain/entities/reservation/reservation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_response.g.dart';

@JsonSerializable()
class PaymentsResponse {
  PaymentsResponse({
    required this.id,
    required this.reservation,
  });

  final int id;
  final Reservation reservation;

  factory PaymentsResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentsResponseToJson(this);
}
