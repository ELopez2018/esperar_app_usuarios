import 'package:esperar_users/domain/entities/chairs/chairs.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_distribution.g.dart';

@JsonSerializable()
class VehicleDistribution {
  final int maxChairsRow;
  final int rowsCount;
  final List<Chair> chairs;

  VehicleDistribution({
    required this.maxChairsRow,
    required this.rowsCount,
    required this.chairs,
  });

  VehicleDistribution copyWith(
      {int? maxChairsRow, int? rowsCount, List<Chair>? chairs}) {
    return VehicleDistribution(
      maxChairsRow: maxChairsRow ?? this.maxChairsRow,
      rowsCount: rowsCount ?? this.rowsCount,
      chairs: chairs ?? this.chairs,
    );
  }

  factory VehicleDistribution.fromJson(Map<String, dynamic> json) =>
      _$VehicleDistributionFromJson(json);
  Map<String, dynamic> toJson() => _$VehicleDistributionToJson(this);
}
