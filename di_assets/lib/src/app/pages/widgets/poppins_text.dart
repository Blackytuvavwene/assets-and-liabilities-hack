import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Potxt extends StatelessWidget {
  const Potxt({
    Key? key,
    this.text,
    this.fontWeight,
    this.fontSize,
    this.textColor,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.textDecoration,
  }) : super(key: key);
  final String? text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? textColor;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextDecoration? textDecoration;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      '$text',
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: textColor ?? Theme.of(context).textTheme.headline1?.color,
        decoration: textDecoration,
      ),

      softWrap: true,
      minFontSize: 16,
      //wrapWords: false,
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
