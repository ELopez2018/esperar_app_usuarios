// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservationRequest _$ReservationRequestFromJson(Map<String, dynamic> json) =>
    ReservationRequest(
      journeyId: json['journeyId'] as int,
      vehicleId: json['vehicleId'] as int,
      reservedChairs: (json['reservedChairs'] as List<dynamic>)
          .map((e) => ReservedChairs.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReservationRequestToJson(ReservationRequest instance) =>
    <String, dynamic>{
      'journeyId': instance.journeyId,
      'vehicleId': instance.vehicleId,
      'reservedChairs': instance.reservedChairs,
    };
