import 'package:dio/dio.dart';
import 'package:esperar_users/config/host.dart';
import 'package:esperar_users/core/exceptions/general.dart';
import 'package:esperar_users/core/interceptors/refresh_token.dart';
import 'package:esperar_users/domain/entities/payments/payment_response.dart';
import 'package:esperar_users/domain/entities/payments/payments.dart';
import 'package:esperar_users/domain/repositories/local_storage.dart';
import 'package:esperar_users/domain/services/payments.dart';

class PaymentServices extends PaymentServiceInterface {
  PaymentServices({
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
  Future<PaymentsResponse?> create(Payments payment) async {
    try {
      final response = await dio.post(
        '/payments/pay-reservation',
        options: Options(contentType: 'application/json'),
        data: payment.toJson(),
      );
      if (response.statusCode == 200) {
        final dynamic data = response.data;
        return PaymentsResponse.fromJson(data);
      }
    } on DioException catch (_) {
      exception(_);
    }
    return null;
  }
}
