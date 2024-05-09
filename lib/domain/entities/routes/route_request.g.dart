// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteRequest _$RouteRequestFromJson(Map<String, dynamic> json) => RouteRequest(
      name: json['name'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => CoordinatesRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      stations: json['stations'] as List<dynamic>,
    );

Map<String, dynamic> _$RouteRequestToJson(RouteRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'from': instance.from,
      'to': instance.to,
      'coordinates': instance.coordinates,
      'stations': instance.stations,
    };
