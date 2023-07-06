import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_marks_business/widgets/percentage_circle.dart';

class StaticCircle extends StatelessWidget {
  final double percentage;
  final double size;
  final String text;

  const StaticCircle(
      {super.key,
      required this.text,
      required this.percentage,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        CircleAvatar(
          radius: size * 0.95,
          backgroundColor: Color(0xffE7E7E7),
        ),
        CircleStatistics(
          percentage: percentage,
          size: size,
        ),
        CircleAvatar(
          radius: size * 0.8,
          backgroundColor: Colors.white,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              text,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            Text(
              "${percentage.toInt()} %",
              style: GoogleFonts.inter(
                fontSize: 26,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
