import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  SmallText({
    Key? key,
    this.color = const Color(0xFF757575),
    required this.text,
    this.size = 14,
    this.overFlow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: GoogleFonts.roboto(
        fontSize: size,
        fontWeight: FontWeight.w300,
        color: color,
      ),
    );
  }
}
