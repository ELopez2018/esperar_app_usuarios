import 'package:json_annotation/json_annotation.dart';

part 'chair_id.g.dart';

@JsonSerializable()
class ReservedChairs {
   final int chairId;

  factory ReservedChairs.fromJson(Map<String, dynamic> json) => _$ReservedChairsFromJson(json);

  ReservedChairs({required this.chairId});
  Map<String, dynamic> toJson() => _$ReservedChairsToJson(this);
}
