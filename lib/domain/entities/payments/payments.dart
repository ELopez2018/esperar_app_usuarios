import 'package:json_annotation/json_annotation.dart';

part 'payments.g.dart';

@JsonSerializable()
class Payments {
  Payments({
    required this.reservationId,
    required this.cardNumber,
    required this.cardHolder,
    required this.expirationDate,
    required this.cvv,
  });

  final int reservationId;
  final String cardNumber;
  final String cardHolder;
  final String expirationDate;
  final String cvv;

  factory Payments.fromJson(Map<String, dynamic> json) =>
      _$PaymentsFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentsToJson(this);
}
