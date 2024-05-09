// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_distribution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleDistribution _$VehicleDistributionFromJson(Map<String, dynamic> json) =>
    VehicleDistribution(
      maxChairsRow: json['maxChairsRow'] as int,
      rowsCount: json['rowsCount'] as int,
      chairs: (json['chairs'] as List<dynamic>)
          .map((e) => Chair.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VehicleDistributionToJson(
        VehicleDistribution instance) =>
    <String, dynamic>{
      'maxChairsRow': instance.maxChairsRow,
      'rowsCount': instance.rowsCount,
      'chairs': instance.chairs,
    };
