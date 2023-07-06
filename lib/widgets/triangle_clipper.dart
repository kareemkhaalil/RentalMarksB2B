import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rental_marks_business/utils/theme/colors.dart';

class TrianglePainter extends CustomPainter {
  final Color color;
  final double size;

  TrianglePainter({required this.color, required this.size});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.close();

    final borderPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10.0
      ..strokeJoin = StrokeJoin.round
      ..strokeCap = StrokeCap.round;

    canvas.drawPath(path, paint);
    canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class TriangleShape extends StatelessWidget {
  final Color color;
  final double size;
  final String text;

  TriangleShape({required this.color, required this.size, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
          child: CustomPaint(
            painter: TrianglePainter(color: color, size: size),
            size: Size(size, size),
          ),
        ),
        Positioned(
          bottom: 25,
          right: 0,
          child: Align(
            alignment: AlignmentDirectional.center,
            child: Transform.rotate(
              angle: -pi / 4,
              child: Transform.rotate(
                angle: pi / 2,
                child: Text(
                  text,
                  style: TextStyle(
                    color: Color(
                      0xFFB1A200,
                    ),
                    fontSize: 9.5,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
