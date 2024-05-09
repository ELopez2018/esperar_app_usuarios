// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chairs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chair _$ChairFromJson(Map<String, dynamic> json) => Chair(
      id: json['id'] as int?,
      type: json['type'] as String,
      status: json['status'] as String,
      location:
          LocationChair.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChairToJson(Chair instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'status': instance.status,
      'location': instance.location,
    };
