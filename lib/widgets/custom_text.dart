import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String label;
  final Color? color;
  final FontWeight? weight;
  final TextAlign? textAlign;
  final double? size;
  final String fonFamily;
  final TextDecoration? decoration;

  final Color? decorationColor;
  final double? height;
  final TextOverflow? overflow;

  const CustomText(
      {super.key,
      required this.label,
      this.decoration,
      this.height,
      this.textAlign,
      this.fonFamily = 'Inter',
      this.weight,
      this.color,
      this.size,
      this.overflow,
      this.decorationColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          height: height,
          color: color,
          fontWeight: weight,
          fontFamily: fonFamily,
          fontSize: size,
          overflow: overflow,
          decorationColor: decorationColor,
          decoration: decoration),
    );
  }
}
