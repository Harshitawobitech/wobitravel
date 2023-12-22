import 'package:flutter/material.dart';

class VerticalDashedLineBetweenIcons extends StatelessWidget {
  final IconData icon1;
  final IconData icon2;
  final Color color;
  final double dashWidth;
  final double dashHeight;
  final double gap;

  VerticalDashedLineBetweenIcons({
    required this.icon1,
    required this.icon2,
    this.color = Colors.black,
    this.dashWidth = 1.0,
    this.dashHeight = 5.0,
    this.gap = 3.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon1),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: CustomPaint(
              painter: _VerticalDashedLinePainter(
                color: color,
                dashWidth: dashWidth,
                dashHeight: dashHeight,
                gap: gap,
              ),
              size: Size(20, 0), // Adjust the width of the dashed line
            ),
          ),
        ),
        Icon(icon2),
      ],
    );
  }
}

class _VerticalDashedLinePainter extends CustomPainter {
  final Color color;
  final double dashWidth;
  final double dashHeight;
  final double gap;

  _VerticalDashedLinePainter({
    required this.color,
    required this.dashWidth,
    required this.dashHeight,
    required this.gap,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = dashWidth;

    final double dashSpace = dashHeight + gap;

    double currentY = 0;
    double drawLength = 0;

    while (currentY < size.height) {
      canvas.drawLine(
        Offset(0, currentY),
        Offset(0, currentY + dashHeight),
        paint,
      );
      currentY += dashSpace;
      drawLength += dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
