// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverLocation _$DriverLocationFromJson(Map<String, dynamic> json) =>
    DriverLocation(
      driver: Driver.fromJson(json['driver'] as Map<String, dynamic>),
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => CoordinatesRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DriverLocationToJson(DriverLocation instance) =>
    <String, dynamic>{
      'driver': instance.driver,
      'coordinates': instance.coordinates,
    };
