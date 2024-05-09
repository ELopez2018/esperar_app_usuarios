// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleUpdate _$VehicleUpdateFromJson(Map<String, dynamic> json) =>
    VehicleUpdate(
      soatExpirationDate: json['soatExpirationDate'] as String?,
      tecnoMechanicalExpirationDate:
          json['tecnoMechanicalExpirationDate'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$VehicleUpdateToJson(VehicleUpdate instance) =>
    <String, dynamic>{
      'status': instance.status,
      'soatExpirationDate': instance.soatExpirationDate,
      'tecnoMechanicalExpirationDate': instance.tecnoMechanicalExpirationDate,
    };
