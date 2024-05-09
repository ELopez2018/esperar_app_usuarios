// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicles_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehiclesResponse _$VehiclesResponseFromJson(Map<String, dynamic> json) =>
    VehiclesResponse(
      content: (json['content'] as List<dynamic>)
          .map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageable: Pageable.fromJson(json['pageable'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VehiclesResponseToJson(VehiclesResponse instance) =>
    <String, dynamic>{
      'content': instance.content,
      'pageable': instance.pageable,
    };
