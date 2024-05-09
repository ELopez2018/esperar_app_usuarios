import 'package:esperar_users/domain/entities/payments/payment_response.dart';
import 'package:esperar_users/domain/entities/payments/payments.dart';
import 'package:esperar_users/domain/repositories/paymetns.dart';
import 'package:esperar_users/domain/services/payments.dart';

class PaymentRepository extends PaymentInterface {
  PaymentRepository({
    required this.paymentServiceInterface,
  });

  final PaymentServiceInterface paymentServiceInterface;

  @override
  Future<PaymentsResponse?> create(Payments payment) async {
    return await paymentServiceInterface.create(payment);
  }
}
