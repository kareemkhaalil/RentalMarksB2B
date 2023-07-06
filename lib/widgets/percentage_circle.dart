import 'dart:math';

import 'package:flutter/material.dart';

class CircleStatistics extends StatelessWidget {
  final double percentage;
  final double size;

  CircleStatistics({required this.percentage, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size * 1.75,
      height: size * 1.75,
      child: CustomPaint(
        painter: CirclePainter(
          percentage: percentage,
        ),
        child: Container(),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  final double percentage;

  CirclePainter({
    required this.percentage,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.fill;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2);
    canvas.drawCircle(center, radius, paint);

    final linePaint = Paint()
      ..color = Color(0xff333333)
      ..strokeWidth = 20.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    // حساب زاوية الخط بناءً على النسبة الإحصائية
    final angle = 2 * pi * (percentage / 100);

    // رسم الخط
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      pi / 2, // بداية الزاوية عند الساعة 12
      angle, // الزاوية بناءً على النسبة
      false,
      linePaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
