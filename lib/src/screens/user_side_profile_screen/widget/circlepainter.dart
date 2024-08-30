import 'package:flutter/material.dart';

class CircleDemiTraitPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 223, 223, 223).withOpacity(0.7)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6;

    // Dessiner les demi-traits
    double radius = size.width / 2 + 15; // Ajustez le rayon pour le décalage
    double startAngle = -3.14 / 2.5;
    double sweepAngle = 0.8;
    for (int i = 0; i < 4; i++) {
      canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2), radius: radius,),
        startAngle, // Angle de départ
        sweepAngle, // Réduit la longueur de l'arc (90 degrés)
        false,
        paint,
      );
      startAngle += 3.14 / 2;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
