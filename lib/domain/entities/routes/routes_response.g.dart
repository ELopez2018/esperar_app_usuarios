// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoutesResponse _$RoutesResponseFromJson(Map<String, dynamic> json) =>
    RoutesResponse(
      content: (json['content'] as List<dynamic>)
          .map((e) => Routes.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageable: Pageable.fromJson(json['pageable'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoutesResponseToJson(RoutesResponse instance) =>
    <String, dynamic>{
      'content': instance.content,
      'pageable': instance.pageable,
    };
