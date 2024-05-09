import 'package:esperar_users/domain/entities/journeys/journeys_response.dart';
import 'package:esperar_users/domain/repositories/journeys.dart';
import 'package:esperar_users/domain/services/journeys.dart';

class JourneyRepository extends JourneysInterface{
  final JourneysServiceInterface journeysServiceInterface;

  JourneyRepository({required this.journeysServiceInterface});
  @override
  Future<JourneysResponse?> findAllJourneys(String from, String to) async {
    return await journeysServiceInterface.findAllJourneys(from, to);
  }
}