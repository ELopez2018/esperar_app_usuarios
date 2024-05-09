import 'package:esperar_users/domain/entities/chairs/vehicle_distribution.dart';
import 'package:esperar_users/domain/entities/routes/route.dart';
import 'package:esperar_users/domain/entities/user/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle.g.dart';

@JsonSerializable()
class Vehicle {
  Vehicle({
    required this.id,
    required this.licensePlate,
    required this.secondaryPlate,
    required this.model,
    required this.brand,
    required this.year,
    required this.color,
    required this.cylinderCapacity,
    required this.capacity,
    required this.occupancy,
    required this.driver,
    required this.route,
    required this.status,
    required this.soatExpirationDate,
    required this.tecnoMechanicalExpirationDate,
    required this.distribution,
  });

  final int id;
  final String? licensePlate;
  final String? secondaryPlate;
  final String? model;
  final String? brand;
  final int? year;
  final String? color;
  final double? cylinderCapacity;
  final int? capacity;
  final int? occupancy;
  @JsonKey(name: 'mainDriver')
  final User? driver;
  final Routes? route;
  final String? status;
  final String? soatExpirationDate;
  final String? tecnoMechanicalExpirationDate;
  final VehicleDistribution distribution;

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);
  Map<String, dynamic> toJson() => _$VehicleToJson(this);
}
