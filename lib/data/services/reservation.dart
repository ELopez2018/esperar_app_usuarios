import 'package:dio/dio.dart';
import 'package:esperar_users/config/host.dart';
import 'package:esperar_users/core/exceptions/general.dart';
import 'package:esperar_users/core/interceptors/refresh_token.dart';
import 'package:esperar_users/domain/entities/reservation/reservation.dart';
import 'package:esperar_users/domain/entities/reservation/reservation_request.dart';
import 'package:esperar_users/domain/repositories/local_storage.dart';
import 'package:esperar_users/domain/services/reservation.dart';

class ReservationService extends ReservationServiceInterface {
  ReservationService({
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
  Future<Reservation?> create(ReservationRequest value) async {
    try {
      final response = await dio.post('/reservations', data: value.toJson());
      if (response.statusCode == 200) {
        final dynamic data = response.data;
        return Reservation.fromJson(data);
      }
    } on DioException catch (_) {
      exception(_);
    }
    return null;
  }
}
