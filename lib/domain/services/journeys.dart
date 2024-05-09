import 'package:esperar_users/domain/entities/journeys/journeys_response.dart';

abstract class JourneysServiceInterface{
  Future<JourneysResponse?> findAllJourneys(String from, String to);
}