import 'package:esperar_users/domain/entities/payments/payment_response.dart';
import 'package:esperar_users/domain/entities/payments/payments.dart';

abstract class PaymentServiceInterface {
  Future<PaymentsResponse?> create(Payments payment);
}