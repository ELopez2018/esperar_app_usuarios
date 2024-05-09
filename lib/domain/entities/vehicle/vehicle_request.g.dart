// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleRequest _$VehicleRequestFromJson(Map<String, dynamic> json) =>
    VehicleRequest(
      licensePlate: json['licensePlate'] as String?,
      secondaryPlate: json['secondaryPlate'] as String?,
      model: json['model'] as String?,
      brand: json['brand'] as String?,
      year: json['year'] as int?,
      color: json['color'] as String?,
      cylinderCapacity: (json['cylinderCapacity'] as num?)?.toDouble(),
      capacity: json['capacity'] as int?,
      occupancy: json['occupancy'] as int?,
      driver: json['driver'] as int?,
      soatExpirationDate: json['soatExpirationDate'] as String?,
      tecnoMechanicalExpirationDate:
          json['tecnoMechanicalExpirationDate'] as String?,
    );

Map<String, dynamic> _$VehicleRequestToJson(VehicleRequest instance) =>
    <String, dynamic>{
      'licensePlate': instance.licensePlate,
      'secondaryPlate': instance.secondaryPlate,
      'model': instance.model,
      'brand': instance.brand,
      'year': instance.year,
      'color': instance.color,
      'cylinderCapacity': instance.cylinderCapacity,
      'capacity': instance.capacity,
      'occupancy': instance.occupancy,
      'driver': instance.driver,
      'soatExpirationDate': instance.soatExpirationDate,
      'tecnoMechanicalExpirationDate': instance.tecnoMechanicalExpirationDate,
    };
