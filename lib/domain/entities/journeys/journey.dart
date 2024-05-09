import 'package:esperar_users/domain/entities/routes/route.dart';
import 'package:esperar_users/domain/entities/vehicle/vehicle.dart';
import 'package:json_annotation/json_annotation.dart';

part 'journey.g.dart';

@JsonSerializable()
class Journey {
  Journey({
    required this.id,
    required this.route,
    required this.vehicle,
    required this.startDate,
    required this.endDate,
    required this.price,
  });

  final int id;
  final Routes route;
  final Vehicle vehicle;
  final String startDate;
  final String endDate;
  final double price;

    factory Journey.fromJson(Map<String, dynamic> json) =>
      _$JourneyFromJson(json);

  Map<String, dynamic> toJson() => _$JourneyToJson(this);
}
