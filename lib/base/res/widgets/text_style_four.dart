import 'package:flutter/material.dart';

import '../styles/app_styles.dart';

class TextStyleFour extends StatelessWidget {
  const TextStyleFour({super.key, required this.textLocation, this.align=TextAlign.start,});
  final String textLocation;
  final TextAlign align;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign:align,
      textLocation,
      style: AppStyles.headLineStyle4.copyWith(
        color: Colors.white,
      ),
    );
  }
}
