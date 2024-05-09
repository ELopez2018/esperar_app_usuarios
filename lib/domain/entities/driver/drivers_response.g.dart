// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drivers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriversResponse _$DriversResponseFromJson(Map<String, dynamic> json) =>
    DriversResponse(
      content: (json['content'] as List<dynamic>)
          .map((e) => Driver.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageable: Pageable.fromJson(json['pageable'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DriversResponseToJson(DriversResponse instance) =>
    <String, dynamic>{
      'content': instance.content,
      'pageable': instance.pageable,
    };
