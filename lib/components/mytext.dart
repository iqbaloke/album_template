import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class H1 extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final Color color;
  const H1({
    Key? key,
    required this.title,
    required this.color,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: fontWeight ?? FontWeight.bold,
        color: color,
      ),
    );
  }
}

class H2 extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final Color color;
  const H2({
    Key? key,
    required this.title,
    this.fontWeight,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: fontWeight ?? FontWeight.bold,
        color: color,
      ),
    );
  }
}

class H3 extends StatelessWidget {
  final String title;
  final Color color;
  final FontWeight? fontWeight;
  const H3({
    Key? key,
    required this.title,
    required this.color,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: fontWeight ?? FontWeight.bold,
        color: color,
      ),
    );
  }
}

class H4 extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final Color color;
  const H4({
    Key? key,
    required this.title,
    required this.color,
    this.fontWeight
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: fontWeight ?? FontWeight.bold,
        color: color,
      ),
    );
  }
}

class H5 extends StatelessWidget {
  final String title;
  final Color color;
  final FontWeight? fontWeight;
  const H5({
    Key? key,
    required this.title,
    this.fontWeight,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        fontSize: 12,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}

class BodyText extends StatelessWidget {
  final String title;
  final Color color;
  final int? maxLines;
  final TextAlign align;
  const BodyText({
    Key? key,
    this.maxLines,
    required this.title,
    required this.color,
    required this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: align,
      maxLines: maxLines,
      style: GoogleFonts.poppins(
        fontSize: 12,
        color: color,
      ),
    );
  }
}

class CaptionText extends StatelessWidget {
  final String title;
  final Color color;
  final TextAlign align;
  const CaptionText({
    Key? key,
    required this.title,
    required this.color,
    required this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: align,
      style: GoogleFonts.poppins(
        fontSize: 10,
        color: color,
      ),
    );
  }
}

class SmallText extends StatelessWidget {
  final String title;
  final Color color;
  const SmallText({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        fontSize: 8,
        color: color,
      ),
    );
  }
}
