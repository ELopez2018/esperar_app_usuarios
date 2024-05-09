import 'package:esperar_users/domain/entities/journeys/journey.dart';
import 'package:esperar_users/domain/entities/pageable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'journeys_response.g.dart';

@JsonSerializable()
class JourneysResponse {
  JourneysResponse({
    required this.content,
    required this.pageable,
  });

  final List<Journey> content;
  final Pageable pageable;

  factory JourneysResponse.fromJson(Map<String, dynamic> json) =>
      _$JourneysResponseFromJson(json);
  Map<String, dynamic> toJson() => _$JourneysResponseToJson(this);
}
