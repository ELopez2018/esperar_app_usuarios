import 'package:flutter/material.dart';

class PaintChair extends StatelessWidget {
  final Color? color;
  final Color? borderColor;
  final String chairType;
  final double width;

  const PaintChair(
      {super.key,
      required this.chairType,
      required this.width,
      this.borderColor = const Color(0xff21242C),
      this.color = const Color(0xff4D525A)});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
          color: chairType == "PASILLO" ? Colors.transparent : color,
          borderRadius: BorderRadius.circular(7.0)),
      child: chairType == "PASILLO"
          ? const SizedBox()
          : CustomPaint(painter: _PainterChair(borderColor: borderColor!)),
    );
  }
}

class _PainterChair extends CustomPainter {
  final Color borderColor;

  _PainterChair({
    super.repaint,
    required this.borderColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    final path = Path();

    path.moveTo(0, size.height * .2);
    path.lineTo(size.width * .2, size.height * .25);
    path.lineTo(size.width * .2, size.height * .7);
    path.lineTo(size.width * .1, size.height);
    path.lineTo(size.width * .2, size.height * .7);
    path.lineTo(size.width * .8, size.height * .7);
    path.lineTo(size.width * .95, size.height);
    path.lineTo(size.width * .8, size.height * .7);
    path.lineTo(size.width * .8, size.height * .25);
    path.lineTo(size.width, size.height * .2);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
