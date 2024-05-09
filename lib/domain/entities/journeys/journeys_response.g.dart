// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journeys_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JourneysResponse _$JourneysResponseFromJson(Map<String, dynamic> json) =>
    JourneysResponse(
      content: (json['content'] as List<dynamic>)
          .map((e) => Journey.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageable: Pageable.fromJson(json['pageable'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JourneysResponseToJson(JourneysResponse instance) =>
    <String, dynamic>{
      'content': instance.content,
      'pageable': instance.pageable,
    };
