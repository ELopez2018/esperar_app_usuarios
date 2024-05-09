// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteUpdate _$RouteUpdateFromJson(Map<String, dynamic> json) => RouteUpdate(
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : CoordinatesRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      stations: json['stations'] as List<dynamic>,
    );

Map<String, dynamic> _$RouteUpdateToJson(RouteUpdate instance) =>
    <String, dynamic>{
      'coordinates': instance.coordinates,
      'stations': instance.stations,
    };
