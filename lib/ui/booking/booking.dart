import 'package:esperar_users/core/const/chair_paint.dart';
import 'package:esperar_users/core/const/colors.dart';
import 'package:esperar_users/core/const/navigate.dart';
import 'package:esperar_users/core/const/validators.dart';
import 'package:esperar_users/domain/blocs/booking.dart';
import 'package:esperar_users/domain/entities/journeys/journey.dart';
import 'package:esperar_users/domain/repositories/paymetns.dart';
import 'package:esperar_users/domain/repositories/reservation.dart';
import 'package:esperar_users/ui/widgets/piant_target_card.dart';
import 'package:esperar_users/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookingsScreen extends StatefulWidget {
  const BookingsScreen._();

  static Widget init(BuildContext context) {
    final journey = ModalRoute.of(context)!.settings.arguments as Journey;

    return ChangeNotifierProvider(
      create: (context) => BookingProvider(
        reservationInterface:
            Provider.of<ReservationInterface>(context, listen: false),
        paymentInterface: Provider.of<PaymentInterface>(context, listen: false),
      )..init(journey),
      builder: (context, child) => const BookingsScreen._(),
    );
  }

  @override
  State<BookingsScreen> createState() => _BookingsScreenState();
}

class _BookingsScreenState extends State<BookingsScreen> {
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    final bloc = Provider.of<BookingProvider>(context);

    final Size size = MediaQuery.of(context).size;
    final padding = size.width * 0.2 / (bloc.distribution!.maxChairsRow + 1);
    final width = (size.width * 0.8) / bloc.distribution!.maxChairsRow;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: bloc.controller,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    const AppBarCustom(
                      action: BackButton(
                        color: primaryColor,
                      ),
                      title: Text(
                        'Selecione las siilas',
                        style: TextStyle(color: primaryColor),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        PaintChair(
                          chairType: "NORMAL",
                          color: Colors.green[100],
                          borderColor: Colors.green,
                          width: width,
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          "Silla disponible",
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        PaintChair(
                          chairType: "NORMAL",
                          color: Colors.green,
                          borderColor: Colors.white,
                          width: width,
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          "Silla seleccionada",
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        PaintChair(
                          chairType: "OCCUPIED",
                          width: width,
                        ),
                        const SizedBox(width: 5),
                        const Text("Silla ocupada")
                      ],
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(right: padding),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: bloc.distribution!.maxChairsRow),
                        itemBuilder: (context, index) {
                          final chair = bloc.distribution!.chairs[index];
                          return Padding(
                            padding: EdgeInsets.only(
                              top: chair.location.rowIndex != 0
                                  ? chair.type != "PASILLO"
                                      ? padding
                                      : 0
                                  : padding,
                              left: padding,
                            ),
                            child: chair.status == "AVAILABLE"
                                ? GestureDetector(
                                    onTap: () {
                                      if (bloc.chairsSelect.contains(chair)) {
                                        bloc.chairsSelect.remove(chair);
                                      } else {
                                        bloc.chairsSelect.add(chair);
                                      }
                                      setState(() {});
                                    },
                                    child: PaintChair(
                                      chairType: chair.type,
                                      color: bloc.chairsSelect.contains(chair)
                                          ? Colors.green
                                          : Colors.green[100],
                                      borderColor:
                                          bloc.chairsSelect.contains(chair)
                                              ? Colors.white
                                              : Colors.green,
                                      width: width,
                                    ),
                                  )
                                : PaintChair(
                                    chairType: chair.type,
                                    width: width,
                                  ),
                          );
                        },
                        itemCount: bloc.distribution!.chairs.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ButtonCustom(
                        text: "Seleccionar sillas",
                        color: Colors.white,
                        borderColor: Colors.white,
                        background: bloc.chairsSelect.isNotEmpty
                            ? primaryColor
                            : Colors.grey,
                        onTap: () {
                          bloc.controller.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut);
                        },
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      AppBarCustom(
                        action: BackButton(
                          color: primaryColor,
                          onPressed: () => bloc.controller.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut),
                        ),
                        title: Text(''),
                      ),
                      CustomPaint(
                        painter: CreditCardPainter(
                            cardNumber: bloc.number.text,
                            cardHolder: bloc.name.text,
                            expirationDate: bloc.date.text,
                            cvv: bloc.cvv.text),
                        size: const Size(300, 200), // Tamaño de la tarjeta de crédito
                      ),
                      SizedBox(height: 10),
                      Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            '\$${bloc.chairsSelect.length * bloc.journey!.price}',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                          )),
                      InputCustom(
                        label: 'Numero de la tarjeta de crédito',
                        textInputType: TextInputType.number,
                        validator: validateNumericString,
                        controller: bloc.number,
                      ),
                      InputCustom(
                        label: 'Nombre del cliente',
                        controller: bloc.name,
                      ),
                      InputCustom(
                        label: 'Fecha de expiración',
                        controller: bloc.date,
                      ),
                      InputCustom(
                        label: 'Código de seguridad',
                        controller: bloc.cvv,
                        textInputType: TextInputType.number,
                        validator: validateNumericString,
                      ),
                      ButtonCustom(
                        text: 'Realizar pago',
                        background: primaryColor,
                        color: Colors.white,
                        borderColor: Colors.white,
                        onTap: () async {
                          if (_formKey.currentState!.validate()) {
                            final reservation = await bloc.createReservation();
                            if (reservation != null && reservation) {
                              final pago = await bloc.createPago();
                              if (pago) {
                                pop(context, null);
                              }
                            }
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
