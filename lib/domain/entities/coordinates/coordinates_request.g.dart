// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinates_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoordinatesRequest _$CoordinatesRequestFromJson(Map<String, dynamic> json) =>
    CoordinatesRequest(
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
    );

Map<String, dynamic> _$CoordinatesRequestToJson(CoordinatesRequest instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
