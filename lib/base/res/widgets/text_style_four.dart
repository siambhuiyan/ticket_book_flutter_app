import 'package:flutter/material.dart';

import '../styles/app_styles.dart';

class TextStyleFour extends StatelessWidget {
  const TextStyleFour({super.key, required this.textLocation, this.align=TextAlign.start, this.isColor,});
  final String textLocation;
  final TextAlign align;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign:align,
      textLocation,
      style: isColor==null?AppStyles.headLineStyle4.copyWith(
        color: Colors.white,
      ):AppStyles.headLineStyle4.copyWith(color: Colors.grey.shade500),
    );
  }
}
