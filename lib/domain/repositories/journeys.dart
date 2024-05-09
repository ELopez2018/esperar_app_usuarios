import 'package:esperar_users/domain/entities/journeys/journeys_response.dart';

abstract class JourneysInterface{
  Future<JourneysResponse?> findAllJourneys(String from, String to);
}