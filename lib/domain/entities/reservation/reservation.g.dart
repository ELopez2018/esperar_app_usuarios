// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reservation _$ReservationFromJson(Map<String, dynamic> json) => Reservation(
      id: json['id'] as int,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      journey: Journey.fromJson(json['journey'] as Map<String, dynamic>),
      vehicle: Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
      value: json['value'] as String?,
      reservedChairs: (json['reservedChairs'] as List<dynamic>)
          .map((e) => Chair.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReservationToJson(Reservation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'journey': instance.journey,
      'vehicle': instance.vehicle,
      'value': instance.value,
      'reservedChairs': instance.reservedChairs,
    };
