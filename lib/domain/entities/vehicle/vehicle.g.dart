// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vehicle _$VehicleFromJson(Map<String, dynamic> json) => Vehicle(
      id: json['id'] as int,
      licensePlate: json['licensePlate'] as String?,
      secondaryPlate: json['secondaryPlate'] as String?,
      model: json['model'] as String?,
      brand: json['brand'] as String?,
      year: json['year'] as int?,
      color: json['color'] as String?,
      cylinderCapacity: (json['cylinderCapacity'] as num?)?.toDouble(),
      capacity: json['capacity'] as int?,
      occupancy: json['occupancy'] as int?,
      driver: json['mainDriver'] == null
          ? null
          : User.fromJson(json['mainDriver'] as Map<String, dynamic>),
      route: json['route'] == null
          ? null
          : Routes.fromJson(json['route'] as Map<String, dynamic>),
      status: json['status'] as String?,
      soatExpirationDate: json['soatExpirationDate'] as String?,
      tecnoMechanicalExpirationDate:
          json['tecnoMechanicalExpirationDate'] as String?,
      distribution: VehicleDistribution.fromJson(
          json['distribution'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VehicleToJson(Vehicle instance) => <String, dynamic>{
      'id': instance.id,
      'licensePlate': instance.licensePlate,
      'secondaryPlate': instance.secondaryPlate,
      'model': instance.model,
      'brand': instance.brand,
      'year': instance.year,
      'color': instance.color,
      'cylinderCapacity': instance.cylinderCapacity,
      'capacity': instance.capacity,
      'occupancy': instance.occupancy,
      'mainDriver': instance.driver,
      'route': instance.route,
      'status': instance.status,
      'soatExpirationDate': instance.soatExpirationDate,
      'tecnoMechanicalExpirationDate': instance.tecnoMechanicalExpirationDate,
      'distribution': instance.distribution,
    };
