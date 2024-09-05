import 'package:flutter/material.dart';

class ClippedCircles extends StatelessWidget {
  const ClippedCircles({
    required this.context,
    required this.width,
    required this.height,
    required this.isSmall,
    super.key,
  });
  final BuildContext context;
  final double width;
  final double height;
  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: SizedBox(
        width: width,
        height: height,
        child: CustomPaint(
          painter: isSmall
              ? OvalPainter2(
                  context: context,
                  color: const Color.fromRGBO(208, 255, 248, 0.41),
                )
              : OvalPainter1(
                  context: context,
                  color: const Color.fromRGBO(208, 255, 248, 0.41),
                ),
        ),
      ),
    );
  }
}

class OvalPainter1 extends CustomPainter {
  final BuildContext context;
  final Color color;
  OvalPainter1({required this.color, required this.context});
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paintLarge = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    // Define rectangles for the ovals (for larger oval)
    final Rect largeOvalRect = Rect.fromCenter(
      center: Offset(
        size.width * 1.2,
        size.height * 0.5,
      ), // Positioned outside the container to the right
      width: MediaQuery.of(context).size.width * 1.2, // Width of the large oval
      height: 350, // Height of the large oval (making it oval)
    );

    // Draw the larger oval (blue)
    canvas.drawOval(largeOvalRect, paintLarge);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class OvalPainter2 extends CustomPainter {
  final BuildContext context;
  final Color color;
  OvalPainter2({required this.color, required this.context});
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paintSmall = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    // Define rectangles for the smaller oval
    final Rect smallOvalRect = Rect.fromCenter(
      center: Offset(
        size.width * 1.1,
        size.height * 0.5,
      ), // Positioned slightly closer
      width:
          MediaQuery.of(context).size.width * 0.6, // Width of the smaller oval
      height: 170, // Height of the smaller oval (making it oval)
    );

    // Draw the smaller oval (red) completely inside the larger oval
    canvas.drawOval(smallOvalRect, paintSmall);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
