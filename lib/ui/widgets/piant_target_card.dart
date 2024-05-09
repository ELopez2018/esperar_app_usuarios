import 'package:flutter/material.dart';

class CreditCardPainter extends CustomPainter {
  final String cardNumber;
  final String cardHolder;
  final String expirationDate;
  final String cvv;

  CreditCardPainter({
    required this.cardNumber,
    required this.cardHolder,
    required this.expirationDate,
    required this.cvv,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final cardColor = Colors.blue; // Color de fondo de la tarjeta
    final textColor = Colors.white; // Color del texto en la tarjeta

    // Dibujar el fondo de la tarjeta
    final backgroundPaint = Paint()..color = cardColor;
    canvas.drawRect(Offset.zero & size, backgroundPaint);

    // Dibujar los números de la tarjeta
    final textSpan = TextSpan(
      text: cardNumber,
      style: TextStyle(color: textColor, fontSize: 20),
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(20, 20));

    // Dibujar el titular de la tarjeta
    final textSpanHolder = TextSpan(
      text: 'Titular: $cardHolder',
      style: TextStyle(color: textColor, fontSize: 16),
    );
    final textPainterHolder = TextPainter(
      text: textSpanHolder,
      textDirection: TextDirection.ltr,
    );
    textPainterHolder.layout();
    textPainterHolder.paint(canvas, Offset(20, 60));

    // Dibujar la fecha de vencimiento
    final textSpanExpDate = TextSpan(
      text: 'Expiración: $expirationDate',
      style: TextStyle(color: textColor, fontSize: 16),
    );
    final textPainterExpDate = TextPainter(
      text: textSpanExpDate,
      textDirection: TextDirection.ltr,
    );
    textPainterExpDate.layout();
    textPainterExpDate.paint(canvas, Offset(20, 100));

    // Dibujar el CVV
    final textSpanCVV = TextSpan(
      text: 'CVV: $cvv',
      style: TextStyle(color: textColor, fontSize: 16),
    );
    final textPainterCVV = TextPainter(
      text: textSpanCVV,
      textDirection: TextDirection.ltr,
    );
    textPainterCVV.layout();
    textPainterCVV.paint(canvas, Offset(20, 140));
  }

  @override
  bool shouldRepaint(CreditCardPainter oldDelegate) {
    return cardNumber != oldDelegate.cardNumber ||
        cardHolder != oldDelegate.cardHolder ||
        expirationDate != oldDelegate.expirationDate ||
        cvv != oldDelegate.cvv;
  }
}