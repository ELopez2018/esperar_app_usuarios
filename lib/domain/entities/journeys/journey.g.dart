// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journey.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Journey _$JourneyFromJson(Map<String, dynamic> json) => Journey(
      id: json['id'] as int,
      route: Routes.fromJson(json['route'] as Map<String, dynamic>),
      vehicle: Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$JourneyToJson(Journey instance) => <String, dynamic>{
      'id': instance.id,
      'route': instance.route,
      'vehicle': instance.vehicle,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'price': instance.price,
    };
