import 'package:esperar_users/domain/entities/chairs/location_chair.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chairs.g.dart';

@JsonSerializable()
class Chair {
  final int? id;
  final String type;
  final String status;
  final LocationChair location;
  Chair({
    this.id,
    required this.type,
    required this.status,
    required this.location,
  });

  factory Chair.fromJson(Map<String, dynamic> json) => _$ChairFromJson(json);
  Map<String, dynamic> toJson() => _$ChairToJson(this);
}
