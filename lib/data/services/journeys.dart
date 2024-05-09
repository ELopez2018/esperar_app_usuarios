import 'package:dio/dio.dart';
import 'package:esperar_users/config/host.dart';
import 'package:esperar_users/core/exceptions/general.dart';
import 'package:esperar_users/core/interceptors/refresh_token.dart';
import 'package:esperar_users/domain/entities/journeys/journeys_response.dart';
import 'package:esperar_users/domain/repositories/local_storage.dart';
import 'package:esperar_users/domain/services/journeys.dart';

class JourneysService extends JourneysServiceInterface {
  JourneysService({
    required this.localStorageInterface,
  });

  final LocalStorageInterface localStorageInterface;
  late final Dio dio = Dio(BaseOptions(baseUrl: apiHost))
    ..interceptors.add(
      ValidateTokenInterceptor(
        localStorageInterface: localStorageInterface,
      ),
    );

  @override
  Future<JourneysResponse?> findAllJourneys(String from, String to) async{
     try {
      final response = await dio.get('/journeys?from=$from&to=$to'
       );
      if (response.statusCode == 200) {
        final dynamic data = response.data;
        return JourneysResponse.fromJson(data);
      }
    } on DioException catch (_) {
      exception(_);
    }
    return null;
  }
}
