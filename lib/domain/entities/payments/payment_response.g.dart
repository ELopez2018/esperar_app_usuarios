// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentsResponse _$PaymentsResponseFromJson(Map<String, dynamic> json) =>
    PaymentsResponse(
      id: json['id'] as int,
      reservation:
          Reservation.fromJson(json['reservation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentsResponseToJson(PaymentsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reservation': instance.reservation,
    };
