import 'package:json_annotation/json_annotation.dart';

part 'location_chair.g.dart';

@JsonSerializable()
class LocationChair {
  final int rowIndex;
  final int columnIndex;

  LocationChair({
    required this.rowIndex,
    required this.columnIndex,
  });

  factory LocationChair.fromJson(Map<String, dynamic> json) => _$LocationChairFromJson(json);
  Map<String, dynamic> toJson() => _$LocationChairToJson(this);
}
