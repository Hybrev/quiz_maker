import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeText extends StatelessWidget {
  const HomeText(this.input, this.textSize, {super.key});

  final String input;
  final double textSize;

  @override
  Widget build(context) {
    return Text(
      input,
      style: GoogleFonts.urbanist(
        fontSize: textSize,
        fontWeight: FontWeight.bold,
        color: const Color.fromARGB(255, 161, 236, 255),
      ),
      textAlign: TextAlign.center,
    );
  }
}
